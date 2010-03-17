<<<<<<< HEAD:www/php/Authentication.php
<?php

require_once("Database.php");

/**
 * @class Authentication
 * @brief Authentication module for authenticating, creating or modifying users.
 */
class Authentication
{
	/**
	 * @brief User authentication level.
	 *
	 * @arg -1 = Not authenticated.
	 * @arg 0  = Administrator.
	 * @arg 1  = Teacher.
	 * @arg 2  = Student.
	 */
	public $AuthenticationLevel;
        
        private $Username;

	/**
	 *
	 * @param string $Username
	 * @param string $Password
	 * @return boolean
	 */
	public function ValidateCredentials($Username, $Password)
	{
			
	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function ValidateUsername($Username)
	{

	}

	/**
	 *
	 * @param string $Password
	 * @return boolean
	 */
	public function ValidatePassword($Password)
	{		
            
	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function CheckUserExistence($Username)
	{
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
	 * @return boolean
	 */
	public function Login($Username, $Password)
	{
                global $db;
                
		$safe_username = $db->EscapeString($Username);
		$safe_password = $db->EscapeString($Password);

                $query = "SELECT PasswordHash, PasswordSalt, RoleID FROM User " .
			"WHERE Username='" . $safe_username . "'";

		$result = $db->Query($query);
		$pwInfo = $db->FetchArray($result);

		$PasswordHash = $pwInfo["PasswordHash"];
		$PasswordSalt = $pwInfo["PasswordSalt"];
		$RoleID = $pwInfo["RoleID"];

		$UnknownHash = hash('sha256', hash('sha256', $PasswordSalt . $safe_password));

		if ($UnknownHash == $PasswordHash)
		{
			$this->AuthenticationLevel = $RoleID;
			$this->Username = $Username;
			echo '{"status":"ok", "loginError":"false"}';
		}
		else
		{
			echo '{"loginError":"true","reason":"invalid username or password"}';
		}
	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function Logout()
	{
		$this->AuthenticationLevel = -1;
		$this->Username = "";
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

		do
                {
			$UserID = (rand() % 9999999);
			$query = "SELECT UserID FROM User WHERE UserID=" . $UserID;
			$result = $db->Query($query);
		}
                while ($db->NumRows($result) > 0);

		$PasswordSalt = (rand() % 9999999999999999);
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
	 * @return boolean
	 */
	public function DeleteUser($Username)
	{
		global $db;
		
		$safe_username = $db->EscapeString($Username);
		$query = "DELETE FROM User WHERE Username=" . $safe_username;
		$db->Query($query);
	}

	/**
	 *
	 * @param string $Username
	 * @param string $NewPassword
	 * @return boolean
	 */
	public function ChangePassword($Username, $NewPassword)
	{
		global $db;

		$safe_username = $db->EscapeString($Username);
		$safe_password = $db->EscapeString($NewPassword);

		//$query = "ALTER TABLE User WHERE Username=" . $safe_username;
		//$db->Query($query);
		
		//mysql_real_escape_string($Username);
		//mysql_real_escape_string($Password);
		//$mysql_query('alter table User into (..) VALUES(\''.$Password.'\') where Username='.$username.';');
	}
}

?>
=======
<?php

require_once("Database.php");

/**
 * @class Authentication
 * @brief Authentication module for authenticating, creating or modifying users.
 */
class Authentication
{
	/**
	 * @brief User authentication level.
	 *
	 * @arg -1 = Not authenticated.
	 * @arg 0  = Administrator.
	 * @arg 1  = Teacher.
	 * @arg 2  = Student.
	 */
	public $AuthenticationLevel;
        
        private $Username;

	/**
	 *
	 * @param string $Username
	 * @param string $Password
	 * @return boolean
	 */
	public function ValidateCredentials($Username, $Password)
	{
		mysql_real_escape_string($Username);		
		mysql_real_escape_string($Password);		
		
	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function ValidateUsername($Username)
	{
		return mysql_real_escape_string($Username);
	}

	/**
	 *
	 * @param string $Password
	 * @return boolean
	 */
	public function ValidatePassword($Password)
	{
		return mysql_real_escape_string($Password);		

	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function CheckUserExistence($Username)
	{
		mysql_real_escape_string($Username);		
		$result = $mysql_query('select UserID from User where UserID='.$Username.'\';');
	}

	/**
	 *
	 * @param string $Username
	 * @param string $Password
	 * @return boolean
	 */
	public function Login($Username, $Password)
	{
                global $db;
                
		mysql_real_escape_string($Username);
		mysql_real_escape_string($Password);

                $query = "select PasswordHash, PasswordSalt, RoleID from User where UserID=" . $Username;

		$result = $db->Query($query);

		$generatedHash = hash('sha512', $PasswordSalt.hash('sha256', $Password));

		if ($generatedHash == $dbHash)
		{

			$AuthenticationLevel = $RoleID;
			echo '{"status":"ok", "loginError":"false"}';
			$_SESSION['loggedIn'] = true;
		}
		else
		{
			echo '{"loginError":"true","reason":"invalid username or password"}';
		}

                $this->Username = $Username;

                /* XXX: check user type */
                $this->AuthenticationLevel = 1;
	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function Logout()
	{
		$this->AuthenticationLevel = -1;
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
		srand(time());		

		do
                {
                    mysql_real_escape_string($Username);
                    mysql_real_escape_string($Password);
                    mysql_real_escape_string($FirstName);
                    mysql_real_escape_string($Username);
                    mysql_real_escape_string($LastName);
                    mysql_real_escape_string($Type);

                    $random = (rand() % 9999999);

                    $query = "select UserID from User where UserID=" . $random;
                    $result = $db->Query($query);
		}
                while ($db->NumRows($result) < 1);

		$salt = (rand() % 9999999999999999);

                $query = "insert into User(UserID, Username, Firstname, " .
                    "LastName, PasswordHash, PasswordSalt, RoleID) " .
                    "VALUES(\'" . $random . "\', \'" .$Username. "\', \'" .
                    $FirstName . "\', \'" . $LastName . "\', \'" .
                    hash('sha512', $salt . $Password) . "\', \'" . $salt .
                    "\', \'" . $Type . "\';

		$db->Query($query);
	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function DeleteUser($Username)
	{
		mysql_real_escape_string($Username);
		$mysql_query('delete from User where Username=\''.$Username.'\';');
	}

	/**
	 *
	 * @param string $Username
	 * @param string $NewPassword
	 * @return boolean
	 */
	public function ChangePassword($Username, $NewPassword)
	{
		mysql_real_escape_string($Username);
		mysql_real_escape_string($Password);
		$mysql_query('alter table User into (..) VALUES(\''.$Password.'\') where Username='.$username.';');
	}
}

?>
>>>>>>> c48f5a979adc78e42233f39a7c2bc04292e5ea04:www/php/Authentication.php
