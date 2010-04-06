<?php
require_once("Main.php");
require_once("Authentication.php");

$auth->EnforceCurrentLevel( 2 );

//query to get the courses that the student has completed
//testing version
$qCompleted = 'select CourseID, ClassID from Class where CourseID in (7326, 7324) order by CourseID, ClassID;'; //soen 228 and 341

$result = $db->Query( $qCompleted );

$courseArr = array();
while($row = mysql_fetch_row( $result ) )
{
	if(!is_array($courseArr[$row[0]])//if the entry in courseArr is not an array, make one
	{
		$courseArr[$row[0]] = array($row[1]);
	}
	$courseArr[$row[0]][] = $row[1];//append to the array of classes with the course as its key
}

print_r($courseArr);

?>
