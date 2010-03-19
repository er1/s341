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

	}

	/**
	 *
	 * @param string $Student
	 * @return string Student's transcript.
	 */
	public function GetTranscript($Student)
	{

	}

	/**
	 *
	 * @param string $Student
	 * @return string Student's program.
	 */
	public function GetProgram($Student)
	{

	}

	/**
	 *
	 * @param string $Student
	 * @return int Student's GPA.
	 */
	public function GetGPA($Student)
	{

	}
}

?>
