<?php

require_once("Authentication.php");
$auth = new Authentication();

require_once("Database.php");
global $db;	//global so it can be re-used to avoid opening multiple handle while only one is enough.
$db = new Database();

if (isset($_REQUEST["action"]))
{
	switch ($_REQUEST["action"])
	{
		case("login"):
                        $auth->Login($_POST['username'], $_POST["password"]);
                        break;
		case("logout"):
                        $auth->Logout();
                        break;
		case("viewSchedule"):
						$auth->EnforceCurrentLevel(2);
						require("viewSchedule.php");
						break;
		default:
			dieNicely("Invalid action");
	}
}
else
{
	dieNicely("No action specified");
}


function dieNicely($msg, $arr = array()) {
	//This should be used ONLY for reporting error!
	//@@TODO: log error? Send e-mail??
	global $db;
	ob_end_clean();	//flush whatever was in buffer b4 so front-end can catch error..
	$arr["error"] = "true";
	$arr["msg"] = $msg;
	print json_encode($arr);
	exit();
	//Note, this is just handling of an error.. There is no need to kill the sessino for such a thing.
}
?>
