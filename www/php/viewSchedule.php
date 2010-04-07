<?php
require_once("Main.php");

require_once("Authentication.php");
$auth->EnforceCurrentLevel(2);


$query = 'SELECT concat(DepartmentID,Number) as Symbol, StartTime, EndTime, Day, Semester, Section, DepartmentId, Number, Name FROM ClassBlock JOIN Class JOIN Course ON ClassBlock.ClassID = Class.ClassID AND Course.CourseID = Class.CourseID 
		WHERE Class.ClassID IN		(SELECT ClassID FROM  RegisteredIn WHERE UserID = (SELECT UserID FROM User WHERE Username = %s))';

$result = $db->Query($query, array( $auth->getUsername() ));

print json_encode($db->FetchEntireArray($result));

?>
