<?php

/*
    PlanZilla: a free online school system.
    Course - handles course information

    Copyright (C) Marc-Andre Moreau <marcandre.moreau@gmail.com> 2010
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
$auth->EnforceCurrentLevel(2);

/**
 * @class Course
 * @brief Module for obtaining course information, verifying dependencies,
 * and generating possible schedules given constraints.
 */
class Course
{
	/**
	 *
	 * @param string $Student
	 * @param int $Year
	 * @param int $Semester
	 * @return string Student's courses for a given semester
	 * (may be a past semester).
	 */
	public function GetCourses($Student, $Year, $Semester)
	{

	}

	/**
	 *
	 * @param string $Student
	 * @param string $NewCourses
	 * @return boolean True if dependencies are satisfied, false otherwise.
	 */
	public function CheckDependencies($Student, $NewCourses)
	{

	}

	/**
	 *
	 * @param string $Student
	 * @param int $Year
	 * @param int $Semester
	 * @return string An array of possible schedules.
	 */
	public function GeneratePossibleSchedules($Student, $Year, $Semester)
	{

	}

	/**
	 *
	 * @param string $Symbol
	 * @return string Course information.
	 */
	public function GetCourseInfo($Symbol)
	{

		global $db;
		$query = 'SELECT concat(DepartmentId, Number) as Symbol, Name, Credits, Description, Note FROM Course
					where concat(DepartmentId, Number) = %s LIMIT 1';

		$result = $db->Query($query, array($Symbol));

		if ($db->NumRows($result) < 1)
			dieNicely("No matching courses found");

		$courseInfo = $db->FetchFirstRow($result);
		$courseInfo["prerequisites"] = $this->GetCoursePrereq($Symbol);
		print json_encode($courseInfo);
	}

	/**
	 *
	 * @param string $Symbol
	 * @return string Course pre-requisites.
	 */
	public function GetCoursePrereq($Symbol)
	{

		global $db;
		$query = 'Select Needs from CleanRequirement where Course = %s';

		$result = $db->Query($query, array($Symbol));

		return ($db->FetchEntireArray($result));	
	}	
	/**
	 *
	 * @param string $Program
	 * @return string Course sequence.
	 */
	public function GetCourseSequence($Program)
	{

	}

	public function getCourseList($searchString)
	{	
		global $db;
		$searchString = "%".$searchString."%";
		$query = 'SELECT concat(DepartmentId, Number) as Symbol, Name FROM Course
					where concat(DepartmentId, Number) like %s or Name like %s order by Symbol Limit 20;';

		$result = $db->Query($query, array($searchString, $searchString));

		print json_encode($db->FetchEntireArray($result));
	
	
	}
}

?>
