<?php

/*
    PlanZilla: a free online school system.
    StudentRecord - handles student record information

    Copyright (C) Andreas Eminidis <andrease@gmail.com> 2010
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
 * @class StudentRecord
 * @brief Module for obtaining or modifying student record information.
 */
class StudentRecord
{
	private $Program; /*!< Student's Program */
	private $GPA; /*!< Student's GPA */


	/**
	 *
	 * @param string $Student
	 * @param int $Year
	 * @param int $Semester
	 * @return string Courses in which the given student is registered for
	 * a particular year and semester.
	 */
	public function GetRegisteredCourses($Student, $Year, $Semester)
	{
		global $db;		
		$semester = array();
		$counter = 0;

		$query = 'SELECT Name FROM CleanTranscript WHERE UserID = (SELECT UserID WHERE Username = %s) AND Section LIKE %s';
		$result = $db->Query($query, array( $Student, "$Year/$Semester%" ));
		while( $info = $db->FetchFirstRow($result))
			$semester[$counter++] = $info["Name"];

		return $semester;
	}

	/**
	 *
	 * @param string $Student
	 */
	public function showTranscript($StudID)
	{
		global $db;
		$query = "SELECT CONCAT(FirstName, ' ', LastName) FullName FROM User WHERE UserID = %s;";
		$result =   $db->Query($query, array( $StudID ));
		$userInfo = $db->FetchFirstRow($result);
		$fullName = $userInfo["FullName"];

		printf('{ "AcademicRecord": { "id": 0, "StudentID": "%s", "Name": "%s", "Program": "%s", "GPA": "%s" }', $StudID, $fullName, $this->GetProgram($StudID), $this->GetGPA($StudID));

//		 print '	{' . "\n" . '    "AcademicRecord": '. // HEADER
//						"\n        {" .
//						"\n" . '            "id": 0 ,' .
//						"\n" . '            "StudentID": '. $userInfo["UserID"]    .',' .
//						"\n" . '            "Name": "'    . $userInfo["FirstName"] . ' ' . $userInfo["LastName"] .'",' .
//						"\n" . '            "Program": "' . $this->GetProgram($StudID)   . '",' .
//						"\n" . '            "GPA": "' . $this->GetGPA($StudID)       . '"' .
//						"\n" . '        }';

		$query = 'SELECT Name, Course Symbol, SUBSTR(Section, 1, 6) Session, SUBSTR(Section,8) Section, Credits, Grade, SUBSTR(Section, 6, 1) Semester, SUBSTR(Section, 1, 4) Year FROM CleanTranscript WHERE UserID = %s';

		$result = $db->Query($query, array( $StudID ));
		print ', "Course":' . json_encode($db->FetchEntireArray($result));

		print  "\n}"; // FOOTER

	}

	/**
	 *
	 * @param string $Student
	 * @return string Student's program.
	 */
	public function GetProgram($StudID)
	{
		global $db;
		$query = 'SELECT Name FROM Program p JOIN StudentProgram sp ON sp.ProgramID = p.ProgramID WHERE sp.UserID = %s'; 
		$result = $db->Query($query, array( $StudID ));
		$this->Program = $db->FetchFirstRow($result);		

		return $this->Program["Name"];
	}

	/**
	 *
	 * @param string $Student
	 * @return int Student's GPA.
	 */
	public function GetGPA($StudID)
	{
		global $db;		

		$GPA_VAL= array(
			'A+'	=>	4.30,
			'A'	=>	4.00,
			'A-'	=>	3.70,
			'B+'	=>	3.30,
			'B'	=>	3.00,
			'B-'	=>	2.70,
			'C+'	=>	2.30,
			'C'	=>	2.00,
			'C-'	=>	1.70,
			'D+'	=>	1.30,
			'D'	=>	1.00,
			'D-'	=>	0.70,
			'U'	=>	0.00
		);

		$query = 'SELECT Credits, Grade FROM CleanTranscript WHERE UserID = %s';
		$result = $db->Query($query, array($StudID));

		$grade_counter = 0;
                $credits_total = 0;

		while( $grade = $db->FetchFirstRow($result) )
		{
			if( array_key_exists($grade["Grade"], $GPA_VAL) )
			{
				$grade_counter += ($GPA_VAL[$grade["Grade"]] * $grade["Credits"] );
				$credits_total += $grade["Credits"];
			}
		}
		if($credits_total <= 0)
		{
			return 0;
		}
		return number_format($grade_counter / $credits_total, 2);
	}
}

?>
