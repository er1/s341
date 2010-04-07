<?php
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
