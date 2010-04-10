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
$q =  "	
		Select CourseName as Symbol, Semester, transcript.Grade, canTakeCourse(User.UserID, sequence.CourseName) as canTakeCourse
		from CleanSequence sequence
		join User on User.Username = %s
		join CleanTranscript transcript on transcript.course = sequence.CourseName and User.UserId = transcript.UserId
";

$result = $db->Query( $q, array($auth->getUsername()) );

print json_encode($db->FetchEntireArray($result));	

?>
