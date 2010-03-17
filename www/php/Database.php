
<?php

/**
 * @class Database
 * @brief Module for abstracting the database and controlling access to it.
 */
class Database
{
	/**
	 * @brief Connect to database using credentials from configuration file.
	 *
	 * @return boolean True if successful, False otherwise.
	 */
	public function Connect()
	{
                require_once("Config.php");

		$db = mysql_connect(constant("db_host"), constant("db_user"), constant("db_password"));
		mysql_select_db(constant("db_name"));

                if ($db == False)
                    return False;
                else
                    return True;
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

	/**
	 * @brief Fetch array from result.
	 *
	 * @return array result array.
	 */
	public function FetchArray($result)
	{
		return mysql_fetch_array($result);
	}

	/**
	 * @brief Count number of rows from result.
	 *
	 * @return int number of rows in result.
	 */
	public function NumRows($result)
	{
		return mysql_num_rows($result);
	}
}

?>
