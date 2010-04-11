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

		$query = 'SELECT DISTINCT Name FROM ClassBlock JOIN Class JOIN Course ON ClassBlock.ClassID = Class.ClassID AND Course.CourseID = Class.CourseID WHERE Class.ClassID IN' .
		'(SELECT ClassID FROM  RegisteredIn WHERE UserID ='.
		'(SELECT UserID FROM User WHERE Username = %s' .
		')) AND Year = %s AND Semester = %s;';
		$result = $db->Query($query, array( $Student, $Year, $Semester ));
		while( $info = $db->FetchFirstRow($result))
			$semester[$counter++] = $info["Name"];

		return $semester;
	}

	/**
	 *
	 * @param string $Student
	 */
	public function showTranscript($Student)
	{
		global $db;
		$query = 'SELECT UserID, FirstName, LastName FROM User WHERE Username = %s;';
		$result =   $db->Query($query, array( $Student ));
		$userInfo = $db->FetchFirstRow($result);

		 print '	{' . "\n" . '    "AcademicRecord": '. // HEADER
						"\n        {" .
						"\n" . '            "id": 0 ,' .
						"\n" . '            "StudentID": '. $userInfo["UserID"]    .',' .
						"\n" . '            "Name": "'    . $userInfo["FirstName"] . ' ' . $userInfo["LastName"] .'",' .
						"\n" . '            "Program": "' . $this->GetProgram($Student)   . '",' .
						"\n" . '            "GPA": "' . $this->GetGPA($Student)       . '"' .
						"\n" . '        }';


		$query = 'SELECT Name, concat(DepartmentId, Number) as Symbol, concat(Semester,"/",Year) as Session, Section, Credits, Grade, Semester, Year FROM Class JOIN Course JOIN RegisteredIn ON Course.CourseID = Class.CourseID AND Class.ClassID = RegisteredIn.ClassID WHERE RegisteredIn.UserID =(SELECT UserID FROM User WHERE Username = %s);';
		$result = $db->Query($query, array( $Student ));
		print ', "Course":' . json_encode($db->FetchEntireArray($result));

		print  "\n}"; // FOOTER

	}

	/**
	 *
	 * @param string $Student
	 * @return string Student's program.
	 */
	public function GetProgram($Student)
	{
		global $db;
		$query = 'SELECT Name FROM Program JOIN StudentProgram JOIN User ON '.
			'Program.ProgramID = StudentProgram.ProgramID AND StudentProgram.UserID = User.UserID WHERE User.UserID = '.
			'(SELECT User.UserID FROM User WHERE Username = %s);';
		$result = $db->Query($query, array( $Student ));
		$this->Program = $db->FetchFirstRow($result);		

		return $this->Program["Name"];
	}

	/**
	 *
	 * @param string $Student
	 * @return int Student's GPA.
	 */
	public function GetGPA($Student)
	{
		$grade_counter = 0;
		$numGradedClasses = 0;
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

	
		$query = 'SELECT ClassID, Grade FROM  RegisteredIn WHERE UserID ='.
		'(SELECT UserID FROM User WHERE Username = %s' .
		');';

		$result = $db->Query($query, array( $Student ));
                $credits_total = 0;

		while( $grade = $db->FetchFirstRow($result) )
		{

			if( array_key_exists($grade["Grade"], $GPA_VAL) )
			{
				$query2 = "select Credits from CleanCourseSection where ClassID =%s";
				$Credits = $db->Query($query2, array( $grade["ClassID"] ));
				$credits = $db->FetchFirstRow($Credits);
				
				$numCredits = (float) $credits;
				$grade_counter += ($GPA_VAL[$grade["Grade"]] * $numCredits );
				$credits_total += $numCredits;
				$numGradedClasses++;
			}
		}
		if($numGradedClasses == 0)
		{
			return 0;
		}
		else if($numGradedClasses > 0)
		{
			$this->GPA = $grade_counter / $credits_total ;
                        $this->GPA = number_format($this->GPA,2);
			return $this->GPA ;
		}
	}
}

?>
