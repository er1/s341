
<?php
require_once("Database.php");
require_once("Authentication.php");

global $db;
$db = new Database();

$auth = new Authentication();

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
$db->Close();

function dieNicely($msg, $arr = array()) {
	//@@TODO: log error? Send e-mail??
	ob_end_clean();	//flush whatever was in buffer b4 so front-end can catch error..
	$arr["error"] = "true";
	$arr["msg"] = $msg;
	print json_encode($arr);
	exit();
}
?>
