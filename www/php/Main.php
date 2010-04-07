<?php

// Making sure we are dealing secure to avoid any problem..
if(!$_SERVER['HTTPS']) dieNicely("Sorry, for security reasons only HTTPS is supported.");

require_once("Authentication.php");
$auth = new Authentication();

require_once("Database.php");
global $db;	// global so it can be re-used to avoid opening multiple handle while only one is enough.
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
		case("CreateUser"):
                        $auth->CreateUser($_POST['username'], $_POST["password"], $_POST['FirstName'], $_POST['LastName'], $_POST['type']);
                        break;
		case("DeleteUser"):
                        $auth->DeleteUser($_POST['username']);
                        break;
		case("ChangePassword"):
                        $auth->ChangePassword($_POST['username'], $_POST["password"]);
                        break;
		case("viewSchedule"):
                        require ("viewSchedule.php");
                        break;
		case("searchForCourse"):
	        require ("Course.php");
			$course = new Course();
			$course->getCourseList($_REQUEST['s']);
	        break;
		case("getCourseInfo"):
	        require ("Course.php");
			$course = new Course();
			$course->getCourseInfo($_REQUEST['symbol']);
	        break;

		case("viewTranscript"):
                        require_once ("StudentRecord.php");
			$record = new StudentRecord();
			$record->showTranscript( $auth->getUsername() );
                        break;
		case("getSessionInfo"):
                        $auth->GetSessionInfo();
                        break;
		default:
			dieNicely("Invalid action");
	}
}
else
{	// Keep people out of the back-end..
	//header ('Location: ../');		//REMEMBER TO UNCOMMENT THIS!!! (when im done)
}


function dieNicely($msg, $arr = array()) {
	// This should be used ONLY for reporting error!
	// @@TODO: log error? Send e-mail??

	global $db;
	ob_end_clean();	// flush whatever was in buffer before so front-end can catch error...
	$arr["error"] = "true";
	$arr["msg"] = $msg;
	print json_encode($arr);
	exit();
	// Note, this is just handling of an error... There is no need to kill the session for such a thing.
}

///////////////////////////////
// I code in Lisp, in Emacs //
//////////////////////////////
function car($list)
{
	foreach($list as &$elem)
        {
		return array($elem);
        }
}

function cdr($list)
{
	$ret = array();
        $count = 0;
        foreach($list as &$elem)
        {
         	if($count > 0)
                         $ret[] = $elem;
                $count += 1;
	}
        return $ret;
}


?>
