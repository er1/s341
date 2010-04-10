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

global $userID;

if ($row = mysql_fetch_row($db->Query('SELECT UserID FROM User WHERE Username = %s', array($auth->getUsername())))) {
	$userID = $row[0];
}

if (!isset($_REQUEST["courses"]) || ! is_array($_REQUEST["courses"])) {
	print "[]";
	exit();
}

$courseList = $_REQUEST["courses"];

//query to get the courses that the student has completed
$qCompleted = 'SELECT CourseID, ClassID FROM Class WHERE CourseID IN ('
. join(", ", $courseList) .
') AND Year = 2009 AND Semester = 4 ORDER BY CourseID;';

global $sID;

$result = $db->Query( $qCompleted );

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
$db->Query($delQuery, array($userID));

// Make new schedules;
$sID = 0;
perm($courseArr);

// Find Conflicts
$findConflicts = "SELECT GROUP_CONCAT(DISTINCT ts1.ScheduleID SEPARATOR ', ') FROM TemporarySchedule ts1 JOIN TemporarySchedule ts2 ON ts1.ScheduleID < ts2.ScheduleID WHERE ts1.UserID = ts2.UserID AND ts1.UserID = %s AND (ts1.ClassID, ts2.ClassID) IN (SELECT * FROM ClassConflict);";

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

$result = $db->Query($scheduleData, array($userID));

$scheduleSet = array();
$scheduleCurrent = "";

while ($row = $db->FetchFirstRow($result)) {
	if ($row["ScheduleID"] != $scheduleCurrent) {
		$scheduleCurrent = $row["ScheduleID"];
		array_unshift($scheduleSet, array());
	}
	unset($row["ScheduleID"]);
	$scheduleSet[0][] = $row;
}

print json_encode($scheduleSet);

///////////////////////////////////////////////////////////////////////////////////////////////

//recursive function for producing all permutations
function perm($tail, $head = array()) {
        if (count($tail) < 1) {
                append($head);
        } else {
                $iter = array_shift($tail);
                foreach ($iter as $e) {
                        $newhead = $head;
                        array_push($newhead, $e);
                        perm($tail, $newhead);
                }
        }
}

function append($class_list)
{
	$GLOBALS['sID'] += 1;
	foreach($class_list as $e)
	{
		$data = array($e, $GLOBALS['userID'], $GLOBALS['sID']);
		$query = "INSERT INTO TemporarySchedule (ClassID, UserID, ScheduleID) VALUES (%s, %s, %s);";

		$GLOBALS['db']->Query($query, $data);
	}
}

?>
