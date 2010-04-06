<?php
require_once("Main.php");
require_once("Authentication.php");

$auth->EnforceCurrentLevel( 2 );

$q = 'select * from SequenceDetails where ProgramID=(select ProgramID from Program where DepartmentID=\'SOEN\');'
$result = $db->Query( $q );

echo("CourseID\t Semester\n");
while($row = mysql_fetch_row( $result ) )
{
	echo("" . $row[1] . "\t" . $row[2] . "\n");
}

?>
