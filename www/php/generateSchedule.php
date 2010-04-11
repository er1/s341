<?php

/*
    PlanZilla: a free online school system.
    generateSchedule - generates schedules with all sorts of constraints

    Copyright (C) Corey Clayton <can.of.tuna@gmail.com> 2010

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

require_once("Main.php");
require_once("Authentication.php");

$auth->EnforceCurrentLevel( 2 );

class GenerateSchedule {
	private $userID;
	private $scheduleID = 0;

	//recursive function for producing all permutations of sections
	private function perm($tail, $head = array()) {
		if (count($tail) < 1) {
			$this->append($head);
		} else {
			$iter = array_shift($tail);
			foreach ($iter as $e) {
				$newhead = $head;
				array_push($newhead, $e);
				$this->perm($tail, $newhead);
			}
		}
	}

	private function append($class_list)
	{
		global $db;
		$this->scheduleID += 1;
		foreach($class_list as $e)
		{
			$data = array($e, $this->userID, $this->scheduleID);
			$query = "INSERT INTO TemporarySchedule (ClassID, UserID, ScheduleID) VALUES (%s, %s, %s);";

			$db->Query($query, $data);
		}
	}

	public function Generate($courseList = array()) {
		global $db;
		global $auth;
		if ($row = mysql_fetch_row($db->Query('SELECT UserID FROM User WHERE Username = %s', array($auth->getUsername())))) {
			$this->userID = $row[0];
		}

		if (count($courseList) < 1) {
			return "[] lol empty";
		}


		// Get all the Class Sections for the list of Courses in courseList

		$qCompleted = "
		SELECT CourseID, ClassID FROM Class
		WHERE CourseID IN (". join(", ", $courseList) .")
		AND Year = 2009 AND Semester = 4
		ORDER BY CourseID";
		$result = $db->Query( $qCompleted );

		// Parse the result such that the data is formed into arrays (courses) of arrays (sections)

		$courseArr = array();
		$currentCourse = "";
		while ($row = mysql_fetch_row( $result ) )
		{
			if ($currentCourse != $row[0]) {
				array_unshift($courseArr, array());
				$currentCourse = $row[0];
			}
			$courseArr[0][] = $row[1];
		}

		// Clear old schedules
		$delQuery = "DELETE FROM TemporarySchedule WHERE UserID = %s AND ScheduleID > 0";
		$db->Query($delQuery, array($this->userID));

		// Make new schedules;
		$this->perm($courseArr);
		
		// Find Conflicts
		$findConflicts = "
		SELECT GROUP_CONCAT(DISTINCT ts1.ScheduleID) FROM TemporarySchedule ts1
		JOIN TemporarySchedule ts2 ON ts1.ClassID < ts2.ClassID AND ts1.ScheduleID = ts2.ScheduleID AND ts1.UserID = ts2.UserID
		JOIN ClassBlock cb1 ON cb1.ClassID = ts1.ClassID
		JOIN ClassBlock cb2 ON cb2.ClassID = ts2.ClassID
		WHERE ts1.UserID = %s
		AND ABS(cb1.EndTime + cb1.StartTime - cb2.EndTime - cb2.StartTime)
		< (cb1.EndTime - cb1.StartTime + cb2.EndTime - cb2.StartTime)";

		// Clear them if any;
		if ($row = mysql_fetch_row($db->Query($findConflicts, array($userID)))) {
			if (isset($row[0]) && (strlen($row[0] > 0))) {
				$clearConflicts = "DELETE FROM TemporarySchedule WHERE ScheduleID IN (" . $row[0] . ") AND UserID = %s";
				$db->Query($clearConflicts, array($userID));
			}
		}

		// Get out sexy Schedule data
		$scheduleData = "SELECT ScheduleID, ts.ClassID, Course Symbol, Name, StartTime, EndTime, Day FROM TemporarySchedule ts
		JOIN ClassBlock cb ON cb.ClassID = ts.ClassID
		JOIN CleanCourseSection ccs ON ccs.ClassID = ts.ClassID
		WHERE UserID = %s ORDER BY ScheduleID";

		$result = $db->Query($scheduleData, array($this->userID));

		$scheduleSet = array();
		$scheduleCurrent = "";

		while ($row = $db->FetchFirstRow($result)) {
			if ($row["ScheduleID"] != $scheduleCurrent) {
				print "|";
				$scheduleCurrent = $row["ScheduleID"];
				array_unshift($scheduleSet, array());
			}
			print ".";
			unset($row["ScheduleID"]);
			$scheduleSet[0][] = $row;
		}

		return json_encode($scheduleSet);
	}

}

?>
