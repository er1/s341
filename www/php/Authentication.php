<?php

/*
 PlanZilla: a free online school system.
 Authentication - handles authentication and modification of user credentials

 Copyright (C) Marc-Andre Moreau <marcandre.moreau@gmail.com> 2010
 Copyright (C) Andreas Eminidis <andrease@gmail.com> 2010

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program. If not, see <http://www.gnu.org/licenses/>.
*/

session_start();
require_once("Main.php");
require_once("Database.php");

/**
 * @class Authentication
 * @brief Authentication module for authenticating, creating or modifying users.
 */
class Authentication
{
	/**
	 * @brief User authentication level. The lower the more powerful.
	 *
	 * @arg -1 = Not authenticated.
	 * @arg 0 = Administrator.
	 * @arg 1 = Teacher.
	 * @arg 2 = Student.
	 */
	public $AuthenticationLevel;

	private $Username;
	private $UserID;

	/**
	 * @brief Class constructor..
	 * @param none
	 * @return void
	 */

	function __construct() 
	{	
		if (isset($_SESSION['AuthenticationLevel']))
		{
				$this->AuthenticationLevel = $_SESSION['AuthenticationLevel'];
				$this->Username = $_SESSION['Username'];
				$this->UserID = $_SESSION['UserID'];
		}
	}


	/**
	 *
	 * @param string $Username
	 * @param string $Password
	 * @return boolean
	 */
	public function ValidateCredentials($Username, $Password)
	{
		$this->ValidateUsername($Username);
		$this->ValidatePassword($Password);
	}


	/**
	 *
	 * @param string $Username
	 * @return void
	 */
	public function ValidateUsername($Username)
	{
		if (preg_match("/^[0-9a-zA-Z_]*$/", $Password) === 0)
			$this->loginError("Your login may only be alphanumerics");
	}
	


	/**
	 *
	 * @param string $Password
	 * @return void
	 */
	public function ValidatePassword($Password)
	{
		if (preg_match("/[0-9]/", $Password) === 0) {
			$this->loginError("Your password must contain a digit.");
			return;
		}
		if (preg_match("/[a-zA-Z]/", $Password) === 0) {
			$this->loginError("Your password must contain a letter.");
			return;
		}
		if (preg_match("/....../", $Password) === 0) {
			$this->loginError("Your password must be at least 6 characters long.");
			return;
		}
	}


	/**
	 * @brief This function is called whenever a module needs to be sure someone is logged before doing something.
	 * @param string $TargetLevel, string $message
	 * @return void
	 */
	public function EnforceCurrentLevel($targetLevel, $message = "")
	{
		if ($this->AuthenticationLevel <= -1 || !isset($this->AuthenticationLevel) || is_null($this->AuthenticationLevel))
			dieNicely("You are just not logged in", array("reason"=>"notLoggedIn", "role"=> $this->AuthenticationLevel)); 
		if ($this->AuthenticationLevel > $targetLevel)
			dieNicely("You do not have enough privilege to perform this action", array("reason"=>"notEnoughLevel"));	 
	}
	
	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function CheckUserExistence($Username)
	{
		$this->EnforceCurrentLevel(2);
		$this->ValidateUsername($Username);

		global $db;

		$query = 'SELECT COUNT(*) as count FROM User WHERE UserID = %s';
		$result = $db->Query($query, array($Username));
		$row = $db->FetchFirstRow($result);

		return ($row["count"] > 0);
	}

	/**
	 *
	 * @param string $Username
	 * @param string $Password
	 * @return boolean, true=success, false=error
	 */
	public function Login($Username, $Password)
	{	
		// If the values are bad they just wont be in the db and the login will fail
		// $this->ValidateUsername($Username);
		// $this->ValidatePassword($Password);

 		global $db;
	
		$query = "SELECT PasswordHash, PasswordSalt, UserRoleID, UserID FROM User WHERE Username = %s";
		$result = $db->Query($query, $Username);
		$pwInfo = $db->FetchFirstRow($result);
		
		$PasswordHash = $pwInfo["PasswordHash"];
		$PasswordSalt = $pwInfo["PasswordSalt"];
		$UserRoleID = $pwInfo["UserRoleID"];

		$UnknownHash = hash('sha256', hash('sha256', $PasswordSalt . $Password));

		if ($UnknownHash == $PasswordHash)
		{
			$_SESSION['AuthenticationLevel'] = $this->AuthenticationLevel = $UserRoleID;
			$_SESSION['UserID'] = $this->UserID = $pwInfo["UserID"];
			$_SESSION['Username'] = $this->Username = $Username;
			print(json_encode(array("status"=>"ok","loginError"=>"false","role"=>$UserRoleID)));
			return true;
		}
		else
		{
			echo '{"$this->loginError":"true","reason":"invalid username or password"}';
			return false;
		}
	}

	/**
	 *
	 * @param string $Username
	 * @return void
	 */
	public function Logout()
	{
		session_unset();
		session_destroy();
		print json_encode(array("status" => "loggedOut", "message" => "You have successfully logged out"));
		exit();
	}

	/**
	 *
	 * @param string $Username
	 * @param string $Password
	 * @param string $FirstName
	 * @param string $LastName
	 * @param string $Type
	 * @return boolean
	 */
	public function CreateUser($Username, $Password, $FirstName, $LastName, $Type)
	{
		$this->EnforceCurrentLevel(0);

		$this->ValidateUsername($Username);
		$this->ValidatePassword($Password);

		global $db;

		if (!is_numeric($Type) || $Type < 0 || $Type > 2)
			dieNicely("The Role type you have provided is invalid. Please try again.");


		$UserID;

		
		// check whether the username is unique
		$query = "SELECT Username FROM User WHERE Username=%s;";
		$result_username = $db->Query($query, array($Username));
		if($db->NumRows($result_username) > 0)
			$this->loginError("The username you have chose already exists. Try again.");
		// make sure that UserID is unique
		do
		{
			$UserID = rand(1000001,9999999);
			$query = "SELECT UserID FROM User WHERE UserID=%s;";
			$result_userid = $db->Query($query, array($UserID));
		}
		while ($db->NumRows($result_userid) > 0);

		$PasswordSalt = (rand(1000000, 999999999999999999999999999) % 9999999999999999);
		$PasswordHash = hash('sha256', hash('sha256', $PasswordSalt . $Password));

		$query = 'INSERT INTO User VALUES(%s,%s,%s,%s,%s,%s,%s);';

 		$result = $db->Query($query, array($UserID, $Username, $FirstName, $LastName, $PasswordHash, $PasswordSalt, $Type));

		if ($result != False)
		{
			echo '{"userCreation":"success"}';
			return True;
		}
		else
		{
			echo '{"userCreation":"failure"}';
			return False;
		}
	}

	/**
	 *
	 * @param string $Username
	 * @return void
	 */
	public function DeleteUser($Username)
	{
		$this->EnforceCurrentLevel(0);
		$this->ValidateUsername($Username);

		 
		global $db;
		
		$query = "DELETE FROM User WHERE Username=%s;";
		$db->Query($query, array($Username));
		if($this->Username == $Username) // logout if a user deletes his own account
			$this->Logout();
	}
	

	/**
	 *
	 * @param string $Username
	 * @param string $NewPassword
	 * @return void
	 */
	public function ChangePassword($Username, $NewPassword)
	{
 		$this->ValidateUsername($Username);
		$this->ValidatePassword($NewPassword);
		// a password can be changed either by a supervisor or by the user who owns the account
		if($this->Username != $Username)
			$this->EnforceCurrentLevel(2);

		global $db;


		$PasswordSalt = (rand(1000000, 999999999999999999999999999) % 9999999999999999);
		$PasswordHash = hash('sha256', hash('sha256', $PasswordSalt . $NewPassword));

		$query = 'UPDATE User SET PasswordHash = %s, PasswordSalt = %s WHERE Username = %s;';
		$db->Query($query, array($PasswordHash, $PasswordSalt, $Username));
	}


	/**
	 * Get the current session information and return a JSON object to the front-end representing the state of the session.
	 * @TODO: connect the database for real to return real information
	 * @return void
	 */

	public function GetSessionInfo()
	{
		global $db;

		$query = 'SELECT FirstName, LastName FROM User WHERE Username=%s;';
		$result = $db->Query($query, array($this->Username));
		$name = $db->FetchFirstRow($result);
		

		$response = array();

		$response["name"] = $name["FirstName"] . " " . $name["LastName"];
		$response["role"] = $this->AuthenticationLevel;
		$response["username"] = $this->Username;

		if($this->AuthenticationLevel == 0)
		{
			$response["program"] = "Administration";
		}
		else
		{
			$query = 'SELECT Name FROM Program WHERE ProgramID = (SELECT ProgramID FROM StudentProgram WHERE UserID = %s);';
			$result = $db->Query($query, array($this->UserID));
			$program = $db->FetchFirstRow($result);
			$response["program"] = $program["Name"];
		}

		print json_encode($response);
	
	}

	/**
	 * Get the Username and return it.
	 * @return Username
	 */
	public function getUsername()
	{
		return $this->Username;
	}
	
	public function getUserID()
	{
		return $this->UserID;
	}

	private function loginError($reason)
	{
		print json_encode(array("errorLogin"=>"true","reason"=>$reason));
		exit();
	}

}


?>

