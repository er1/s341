<?php
require_once("Main.php");
require_once("Authentication.php");

$auth->EnforceCurrentLevel( 2 );

//will do some thing with $_REQUEST later
$q = 'select * from SequenceDetails where ProgramID=(select ProgramID from Program where DepartmentID=\'SOEN\');';
$result = $db->Query( $q );

echo("Sequence :\n[\n");
while($row = mysql_fetch_row( $result ) )
{
	$q2 = 'select DepartmentID, Number from Course where CourseID=\'' .
		$row[1] . '\';';
	$subResult = $db->Query( $q2 );
	$subRow = mysql_fetch_row( $subResult ) or dieNicely("Expected Course info for ID#" . $row[1]);

	echo("\t{\n\t\t" .
		"\t\t Course: \"" . $subRow[0] . "\"\n" .
		"\t\t Semester: " . $subRow[1] . "\n" .
		"\t}" .
		"\t,");	//this feels SO EVIL.... ECMA is weird (hanging comma)
		
	echo("" . $subRow[0] . $subRow[1] . "\t" . $row[2] . "\n");
	
}
echo("]\n");

?>
