<?php

require_once 'Config.php';

/**
 * @class Database
 * @brief Module for abstracting the database and controlling access to it.
 */
class Database
{
	$db;

	/**
	 * @brief Connect to database using credentials from configuration file.
	 *
	 * @return boolean True if successful, False otherwise.
	 */
	public function Connect()
	{
		$db = mysql_connect(constant("db_host"), constant("db_user"), constant("db_password"));
		mysql_select_db(constant("db_name"));
	}

	/**
	 * @brief Close current connection to the database.
	 *
	 * @return boolean True if successful, False otherwise.
	 */
	public function Close()
	{
		mysql_close($db);
	}

	/**
	 * @brief Send a query to the database.
	 *
	 * @return boolean True if successful, False otherwise.
	 */
	public function Query($query)
	{
		mysql_query($query, $db);
	}
}

?>
