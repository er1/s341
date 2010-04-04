<?php
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
	 * @param string $CourseList
	 * @param int $Year
	 * @param int $Semester
	 * @return boolean Registration success or failure.
	 */
	public function RegisterInCourses($Student, $CourseList, $Year, $Semester)
	{
		
	}

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

		$jsonMessage = '	{' . "\n" . '    "events": ['. // HEADER
						"\n        {" .
						"\n" . '            "id": 0 ,' .
						"\n" . '            "StudentID": '. $userInfo["UserID"]    .'",' .
						"\n" . '            "Name": "'    . $userInfo["FirstName"] . ' ' . $userInfo["LastName"] .'",' .
						"\n" . '            "Program": "' . $this->GetProgram($Student)   . '",' .
						"\n" . '            "GPA": "' . $this->GetGPA($Student)       . '",' .
						"\n" . '        }';


		$query = 'SELECT * FROM Class JOIN Course JOIN RegisteredIn ON Course.CourseID = Class.CourseID AND Class.ClassID = RegisteredIn.ClassID WHERE RegisteredIn.UserID =('. 				'SELECT UserID FROM User WHERE Username = %s'.
		');';
		$result = $db->Query($query, array( $Student ));
		$id = 0;

		while( $info = $db->FetchFirstRow($result) )
		{
			$id++;

			$jsonMessage .= ",\n        {" .
			"\n" . '            "id": ' . $id .' ,' .
			"\n" . '            "Name": "' . $info["Name"] .'",' .
			"\n" . '            "Course": "' . $info["DepartmentId"] . $info["Number"] .'",' .
			"\n" . '            "Section": "' . $info["Section"] .'",' .
			"\n" . '            "Credits": "' . $info["Credits"] .'",' .
			"\n" . '            "Grade": "' . $info["Grade"] .'",' .
			"\n" . '            "Semester": "' . $info["Semester"] .'",' .
			"\n" . '            "Year": "' . $info["Year"] .'",' .
			"\n" . '        }';
		}

		$jsonMessage .= "\n    ]\n}"; // FOOTER

		echo $jsonMessage;
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
			'A+'	=>	5.00,
			'A'	=>	4.00,
			'A-'	=>	3.67,
			'B+'	=>	3.33,
			'B'	=>	3.00,
			'B-'	=>	2.67,
			'C+'	=>	2.33,
			'C'	=>	2.00,
			'C-'	=>	1.67,
			'D+'	=>	1.33,
			'D'	=>	1.00,
			'D-'	=>	0.67,
			'U'	=>	0.00
		);

	
		$query = 'SELECT Grade FROM  RegisteredIn WHERE UserID ='.
		'(SELECT UserID FROM User WHERE Username = %s' .
		');';

		$result = $db->Query($query, array( $Student ));
		
		while( $grade = $db->FetchFirstRow($result))
		{
			if( array_key_exists($grade["Grade"], $GPA_VAL) )
			{
				$grade_counter += $GPA_VAL[$grade["Grade"]];
				$numGradedClasses++;
			}
		}
		$this->GPA = $grade_counter / $numGradedClasses;
		return $this->GPA ;
	}
}

?>
