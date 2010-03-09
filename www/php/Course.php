<?php

/**
 * @class Course
 * @brief Module for obtaining course information, verifying dependencies,
 * and generating possible schedules in function of given constraints.
 */
class Course
{
	/**
	 *
	 * @param string $Student
	 * @return string Student's past, present and future courses.
	 */
	public function GetCourses($Student)
	{

	}

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
	 * @param string $Department
	 * @param string $CourseNumber
	 * @return string Course information.
	 */
	public function GetCourseInfo($Department, $CourseNumber)
	{

	}

	/**
	 *
	 * @param string $Program
	 * @return string Course sequence.
	 */
	public function GetCourseSequence($Program)
	{

	}
}

?>
