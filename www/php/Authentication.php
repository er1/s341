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

	}

	/**
	 *
	 * @param string $Username
	 * @param string $Password
	 * @return boolean
	 */
	public function Login($Username, $Password)
	{

	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function Logout($Username)
	{

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

	}

	/**
	 *
	 * @param string $Username
	 * @return boolean
	 */
	public function DeleteUser($Username)
	{

	}

	/**
	 *
	 * @param string $Username
	 * @param string $NewPassword
	 * @return boolean
	 */
	public function ChangePassword($Username, $NewPassword)
	{

	}
}

?>
