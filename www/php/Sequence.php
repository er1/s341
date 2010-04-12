<?php

/*
    PlanZilla: a free online school system.
    Sequence - get course sequence

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

/**
 * @class Sequence
 * @brief Sequence module for sequence information
 */
class Sequence
{
	public function Get()
	{
		global $db;
		global $auth;
		
		$auth->EnforceCurrentLevel( 2 );
	    
		/* post request for sequence based on a string like "SOEN" */
		/* will do some thing with $_REQUEST etc. later */
		
		$q =  "	
			Select Symbol, Semester, CourseName, transcript.Grade, canTakeCourse(User.UserID, Symbol) as canTakeCourse
			from CleanSequence sequence
			join User on User.Username = %s
			join StudentProgram on StudentProgram.ProgramId = sequence.ProgramId and User.UserID = StudentProgram.UserID
			left join CleanTranscript transcript on transcript.course = sequence.Symbol and User.UserId = transcript.UserId
			order by Semester, Symbol;
			";
	    
		$result = $db->Query( $q, array($auth->getUsername()) );
	    
		print json_encode($db->FetchEntireArray($result));
	}
	
	
}

?>