<?php
require_once("Main.php");

require_once("Authentication.php");
$auth->EnforceCurrentLevel(2);


$query = 'SELECT * FROM ClassBlock JOIN Class JOIN Course ON ClassBlock.ClassID = Class.ClassID AND Course.CourseID = Class.CourseID WHERE Class.ClassID IN' .
		'(SELECT ClassID FROM  RegisteredIn WHERE UserID ='.
		'(SELECT UserID FROM User WHERE Username = %s' .
		'));';
$result = $db->Query($query, array( $auth->getUsername() ));
$jsonMessage = '	{' . "\n" . '    "events": ['; // HEADER
$id = 0;

while( $info = $db->FetchFirstRow($result) )
{
	$id++;

	if($id > 1)
		$jsonMessage .= ',';


	$semester = array();
	$nextYear = 0;

	switch($info["Semester"])
	{
		case(1):
			$semester["starts"] = '-06-28';
			$semester["ends"]   = '-08-09';
			break;
		case(2):
			$semester["starts"] = '-09-07';
			$semester["ends"]   = '-12-06';
			break;
		case(3):
			$semester["starts"] = '-09-07';
			$semester["ends"]   = '-04-09';
			$nextYear = 1;
			break;
		case(4):
			$semester["starts"] = '-01-03';
			$semester["ends"]   = '-04-09';
			break;

	}

	$jsonMessage .= "\n        {" .
	"\n" . '            "id": ' . $id .' ,' .
	"\n" . '            "start": "' . $info["Year"] . $semester["starts"] . $info["Day"] . $info["StartTime"] .'.000+10:00" ,' .
	"\n" . '            "end": "'   . ($info["Year"]+$nextYear) . $semester["ends"]   . $info["Day"] . $info["EndTime"]   .'.000+10:00" ,' .
	"\n" . '            "title": "' . $info["Name"] .'",' .
	"\n" . '            "read_only": true,' .
	"\n" . '			"course": "' . $info["DepartmentId"] . $info["Number"] . '"' .
	"\n" . '        }';
}

$jsonMessage .= "\n    ]\n}"; // FOOTER

echo $jsonMessage;

?>
