
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

		global $database_handler;
		$database_handler = mysql_connect(constant("db_host"), constant("db_user"), constant("db_password"));
		$database_select = mysql_select_db(constant("db_name"));

                if ($database_handler == False || $database_select == False)
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
		global $database_handler;
		mysql_close($database_handler);
	}

	/**
	 * @brief Send a query to the database.
	 *
	 * @return boolean True if successful, False otherwise.
	 */
	public function Query($query)
	{
		global $database_handler;
		return mysql_query($query, $database_handler);
	}

	/**
	 * @brief Fetch array from result.
	 *
	 * @return array result array.
	 */
	public function FetchArray($result)
	{
		global $database_handler;
		return mysql_fetch_array($result, $database_handler);
	}

	/**
	 * @brief Count number of rows from result.
	 *
	 * @return int number of rows in result.
	 */
	public function NumRows($result)
	{
		global $database_handler;
		$num_rows = mysql_num_rows($result, $database_handler);

		if ($num_rows == False || $num_rows < 0)
			$num_rows = 0;

		return $num_rows;
	}

	/**
	 * @brief Escape string.
	 *
         * @return string escaped string.
	 */
	public function EscapeString($str)
	{
		global $database_handler;
		return mysql_real_escape_string($str, $database_handler);
	}
}

?>
