<?php

/*
    PlanZilla: a free online school system.
    Course - handles course information

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

$auth->EnforceCurrentLevel(2);


class registerCourse
{

	/**
	*/
	public function checkAvailability($Symbol, $Section)
	{
		echo("test: " . $Symbol . $Section  );
	}
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

            global $db;

            if($auth->Username != $Student)
                    $auth->EnforceCurrentLevel(0);

            foreach($CourseList as &$course)
            {

                $query = 'INSERT INTO RegisteredIn VALUES ( '.
                         '(SELECT UserID FROM User WHERE Username=%s), '.
                         '(SELECT ClassID FROM CleanCourseSection WHERE Course = %s AND Section LIKE %s), ' .
                         '\'IP\');';
                $result = $db->Query($query, array($Student, $course, $Year . '/' . $Semester . '%'));
                $status = $db->FetchFirstRow($result);
            }

	}

}
?>