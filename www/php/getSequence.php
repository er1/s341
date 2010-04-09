<?php

/*
    PlanZilla: a free online school system.
    getSequence - get course sequence

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

//post request for sequence based on a string like "SOEN"
//will do some thing with $_REQUEST etc. later
$q =  "select transcript.UserID, Program.DepartmentId, Program.Name, concat(Course.DepartmentID, Course.Number) as Symbol, transcript.Grade from SequenceDetails seq
inner join Course on Course.CourseID = seq.CourseID
inner join Program on Program.ProgramID = seq.ProgramID
left join CleanTranscript transcript on transcript.course = concat(Course.DepartmentID, Course.Number)
left join User on User.UserId = transcript.userId and User.Username = %s
where Program.DepartmentId = 'SOEN'";

$result = $db->Query( $q, array($auth->getUsername()) );

print json_encode($db->FetchEntireArray($result));	

?>
