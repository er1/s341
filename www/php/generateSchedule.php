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
	private $scheduleSet;

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
		$classes = array();
		$blocks = array();
		foreach($class_list as $class) {
			array_push($classes, array_shift($class));
			while (count($class) > 0) {
				array_push($blocks, array_shift($class));
			}
		}
		for ($i = 0; $i < count($blocks); ++$i) {
			for ($j = 0; $j < $i; ++$j) {
				if (
					($blocks[$i][2] == $blocks[$j][2]) &&
					(abs($blocks[$i][1] + $blocks[$i][0]) -
					($blocks[$j][1] + $blocks[$j][0])) <
					($blocks[$i][1] - $blocks[$i][0] +
					$blocks[$j][1] - $blocks[$j][0])) {

					return;
				}
			}
		}
		$presBlocks = array();
		foreach ($blocks as $blk) {
			array_push($presBlocks, array(
				"Symbol" => $blk[5],
				"Section" => $blk[6],
				"Name" => $blk[7],
				"Day" => $blk[2],
				"StartTime" => $blk[3],
				"EndTime" => $blk[4]));
		}
		array_push($this->scheduleSet, $presBlocks);
	}

	public function Generate($courseList = array()) {
		global $db;

		if (count($courseList) < 1) {
			return "[]";
		}

		// -------------------------------------------------------------------------------------------------------------------

		$query = "SELECT CourseID, ccs.ClassID, TIME_TO_SEC(StartTime) start, TIME_TO_SEC(EndTime) end, Day,
		StartTime, EndTime, Course Symbol, concat(Type,' ',SectionSymbol) as Section, Name
	 	FROM ClassBlock cb
		RIGHT JOIN
		(SELECT CourseID, MAX(ClassID) ClassID, Course, SectionSymbol, Name FROM CleanCourseSectionWSymbol
		WHERE Course IN ('". join("', '", $courseList) ."')
		AND Section LIKE '2009/4%%'
		GROUP BY Course, Section
		ORDER BY CourseID) ccs
		ON ccs.ClassID = cb.ClassID;";

		// -----------------------------------------------------------------------------------------------------------------

		$result = $db->Query($query, array());

		$allBlocks = array();
		$currentCourse = "";
		$currentClass = "";

		while ($row = mysql_fetch_row($result)) {
			if ($currentCourse != $row[0]) {
				array_unshift($allBlocks, array());
				$currentCourse = $row[0];
				$currentClass = "";
			}
			if ($currentClass != $row[1]) {
				array_unshift($allBlocks[0], array($row[1]));
				$currentClass = $row[1];
			}
			array_push($allBlocks[0][0], array($row[2], $row[3], $row[4], $row[5], $row[6], $row[7], $row[8], $row[9]));
		}
		$this->scheduleSet = array();
	
		// Make new schedules;
		$this->perm($allBlocks);

		//print_r($this->scheduleSet);

		return json_encode($this->scheduleSet);
	}
}

?>
