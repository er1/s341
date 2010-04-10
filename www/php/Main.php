<?php

/*
    PlanZilla: a free online school system.
    Main - dispatch calls to correct modules

    Copyright (C) Marc-Andre Moreau <marcandre.moreau@gmail.com> 2010
    Copyright (C) Corey Clayton <can.of.tuna@gmail.com> 2010

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

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
		case("getSequence"):
            require_once ("getSequence.php");
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
