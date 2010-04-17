<?php

/*
    PlanZilla: a free online school system.
    viewSchedule - view schedule

    Copyright (C) Andreas Eminidis <andrease@gmail.com> 2010

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

$query = 'SELECT concat(DepartmentID,Number) as Symbol, StartTime, EndTime, Day, Semester, Section, DepartmentId, Number, Name FROM ClassBlock JOIN Class JOIN Course ON ClassBlock.ClassID = Class.ClassID AND Course.CourseID = Class.CourseID WHERE Class.ClassID IN	(SELECT ClassID FROM  RegisteredIn WHERE UserID = %s)';

$result = $db->Query($query, array( $auth->getUserID() ));

print json_encode($db->FetchEntireArray($result));

?>
