<?php

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
		session_start();
		mysql_real_escape_string($Username);		
		mysql_real_escape_string($Password);
	
		$result = $mysql_query("select PasswordHash, PasswordSalt, RoleID from User where UserID=".$Username)
		or die("Error querying the database");
	

		$generatedHash = hash('sha512', $PasswordSalt.hash('sha256', $Password));

		if($generatedHash == $dbHash)
		{

			$AuthenticationLevel = $RoleID;
			echo '{"status":"ok", "loginError":"false"}';
			$_SESSION['loggedIn'] = true;
		}
		else
		{
			echo '{"loginError":"true","reason":"invalid username/password"}';
			session_destroy();
		}
	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function Logout($Username)
	{
		mysql_real_escape_string($Username);		
		session_destroy();
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
		}
                while (mysql_query('select UserID from User where UserID='.$random.';') == 0);

		$salt = (rand() % 9999999999999999);

		//mysql_query("insert into User(UserID, Username, Firstname, LastName, PasswordHash, PasswordSalt, RoleID) VALUES(\'"$random."\', \'".$Username."\', \'".$FirstName."\', \'".$LastName."\', \'".hash('sha512', $salt.$Password)."\', \'".$salt."\', \'".$Type."\');";
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
