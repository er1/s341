<?php
require_once("Main.php");
require_once("Authentication.php");

$auth->EnforceCurrentLevel( 2 );

//query to get the courses that the student has completed
//testing version
$qCompleted = 'select CourseID, ClassID from Class where CourseID in (7326, 7324) order by CourseID, ClassID;'; //soen 228 and 341

$result = $db->Query( $qCompleted );

$coursArr = array();
while($row = mysql_fetch_row( $result ) )
{
	$course[$row[0]] = $row[1];
}

print_r($courseArr);

?>
