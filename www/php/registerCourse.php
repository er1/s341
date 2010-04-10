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


class StudentRecord
{

	/**
	*/
	public function checkAvailablilty($Symbol)
	{
		echo("test");
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
            
	}

}
?>