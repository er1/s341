<?php

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
	 * @arg 0  = Administrator.
	 * @arg 1  = Teacher.
	 * @arg 2  = Student.
	 */
    public $AuthenticationLevel;


    private $Username;


	/**
	 * @brief Class constructor..
	 * @param none
	 * @return void
	 */

	function __construct() 
	{	
		if (isset($_SESSION['AuthenticationLevel']))
				$this->AuthenticationLevel = $_SESSION['AuthenticationLevel'];

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
            if ( (strlen($Password) > 4) && (strlen($Password) < 21) )
		dieNicely("Your password has to have a length between 5 and 20. Please try again."); 

	}

	/**
	 *
	 * @param string $Password
	 * @return void
	 */
	public function ValidatePassword($Password)
	{
            if ( (strlen($Password) > 5) && (strlen($Password) < 31) )
		dieNicely("Your password has to have a length between 6 and 30. Please try again."); 

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

		$safe_username = $db->EscapeString($Username);
		$query = 'select UserID from User where UserID=' . $safe_username;
		$result = $db->Query($query);

		if ($db->NumRows($result) < 1)
			return False;
		else
			return True;
	}

	/**
	 *
	 * @param string $Username
	 * @param string $Password
	 * @return boolean, true=success, false=error
	 */
	public function Login($Username, $Password)
	{	
		$this->ValidateUsername($Username);
		$this->ValidatePassword($Password);

       		global $db;
        
		$safe_username = $db->EscapeString($Username);
		$safe_password = $db->EscapeString($Password);

        $query = "SELECT PasswordHash, PasswordSalt, UserRoleID FROM User WHERE Username='%s'";
		$result = $db->Query($query, $safe_username);
		$pwInfo = $db->FetchFirstRow($result);
                
		$PasswordHash = $pwInfo["PasswordHash"];
		$PasswordSalt = $pwInfo["PasswordSalt"];
		$UserRoleID = $pwInfo["UserRoleID"];

		$UnknownHash = hash('sha256', hash('sha256', $PasswordSalt . $safe_password));

		if ($UnknownHash == $PasswordHash)
		{
			$_SESSION['AuthenticationLevel'] = $this->AuthenticationLevel = $UserRoleID;
			$_SESSION['Username'] = $this->Username = $Username;
			print(json_encode(array("status"=>"ok","loginError"=>"false","role"=>$UserRoleID)));
			return true;
		}
		else
		{
			echo '{"loginError":"true","reason":"invalid username or password"}';
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

		$safe_username = $db->EscapeString($Username);
		$safe_password = $db->EscapeString($Password);
		$safe_firstname = $db->EscapeString($FirstName);
		$safe_lastname = $db->EscapeString($LastName);

		if (!is_numeric($Type) || $Type < 0 || $Type > 2)
			exit();
		else
			$safe_type = $Type;

		$UserID;

                
                //check whether the username is unique
                $query = "SELECT Username FROM User WHERE Username='" . $safe_username . "';";
                $result_username = $db->Query($query);
                if($db->NumRows($result_username) > 0)
                        dieNicely("The username you have chose already exists. Try again.");
                //make sure that UserID is unique
		do
                {
			$UserID = rand(1000001,9999999);
			$query = "SELECT UserID FROM User WHERE UserID=" . $UserID;
			$result_userid = $db->Query($query);
		}
                while ($db->NumRows($result_userid) > 0);

		$PasswordSalt = (rand(1000000, 999999999999999999999999999) % 9999999999999999);
		$PasswordHash = hash('sha256', hash('sha256', $PasswordSalt . $safe_password));

		$query = "INSERT INTO User " .
			"VALUES(" .
				"'" . $UserID . "', " .
				"'" . $safe_username . "', " .
				"'" . $safe_firstname . "', " .
				"'" . $safe_lastname . "', " .
				"'" . $PasswordHash . "', " .
				"'" . $PasswordSalt . "', " .
				"'" . $safe_type . "');";

		echo $query;

		$result = $db->Query($query);

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

		$this->ValidateUsername($Username);

                //  an account can be deleted: either by a supervisor or by the user who owns the account
                if($this->Username != $Username)
                        $this->EnforceCurrentLevel(0);
		global $db;
		
		$safe_username = $db->EscapeString($Username);
		$query = "DELETE FROM User WHERE Username='" . $safe_username . "';";
		$db->Query($query);
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
		$this->ValidatePassword($Password);
       
                if($this->Username != $Username)
                        $this->EnforceCurrentLevel(2);

                global $db;

                $safe_username = $db->EscapeString($Username);
                $safe_password = $db->EscapeString($NewPassword);

                $query = "SELECT " . $safe_username;

                $PasswordSalt = (rand(1000000, 999999999999999999999999999) % 9999999999999999);
                $PasswordHash = hash('sha256', hash('sha256', $PasswordSalt . $safe_password));

                $query = 'UPDATE User SET PasswordHash = "' . $PasswordHash . '", PasswordSalt = "' . $PasswordSalt . '" WHERE Username="'.$safe_username.'";';
                $db->Query($query);
	}
}


?>

