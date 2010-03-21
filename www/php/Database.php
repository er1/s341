<?php

require_once("Main.php");


/**
 * @class Database
 * @brief Module for abstracting the database and controlling access to it.
 */
class Database
{
	private $database_handler = false;
	
	/**
	 * @brief Connect to database using credentials from configuration file.
	 *
	 * @return boolean True if successful, False otherwise.
	 */
	public function Connect()
	{
		if ($this->database_handler)
			return;	//no need to open another connection if we are already connected.
        require_once("Config.php");
		
		$this->database_handler = mysql_connect(constant("db_host"), constant("db_user"), constant("db_password")) or dieNicely("Cannot connect to DB:" . mysql_error());
		mysql_select_db(constant("db_name")) or dieNicely("Cannot select database");

		//At this point we either dies gracefully or we are not connected.. no need for a return value;
		return true;
	}

	/**
	 * @brief Close current connection to the database.
	 *
	 * @return boolean True if successful, False otherwise.
	 */
	public function Close()
	{	if ($this->database_handler)	//close the handler only if it's opened..
			mysql_close($this->database_handler);
	}

	/**
	 * @brief Send a query to the database.. %s denote a field.. All fields are passed to the escape functions for sanity reason.
	 *
	 * @return boolean True if successful, False otherwise.
	 */
	public function Query($query, $param)
	{
		//require_once("Authentication.php");
		//$auth->EnforceCurrentLevel(2);

                $this->Connect(); //connect if that's not already the case..

                preg_replace('/\'/', '/\"/', $query); // we do this to avoid getting: \u2019 instead of (')

                if (!is_array($param))	//make $param an array in case it's not..
			$param = array($param);
		
		$param = $this->EscapeString($param);	//escape all parameters!

                //dieNicely($query .'||'. $param . '||' . sprintf_array($query,$param)); // to debug
                $result =  mysql_query(sprintf_array($query,$param), $this->database_handler) or dieNicely("Error in querying the DB:" . mysql_error());
		return $result;
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
	 * @brief A lot of the time our recordset only has 0 or one row.. In the case of one row we might often want get straight to the point and access it.
	 *
	 * @return associative array (key,value)
	 */
	public function FetchFirstRow($result)
	{	//if ($this->NumRows($result) != 1)
		//	dieNicely("Database.php: I can't throw useful data off. I wanted one row and I got " . $this->NumRows($result) . " row(s) instead.");
		return mysql_fetch_assoc($result);
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

	/**
	 * @brief Escape string.
	 *
         * @return string escaped string.
	 */
	public function EscapeString($input)
	{	$this->Connect(); //connect if that's not already the case..
		if (is_array($input))
		{
			foreach ($input as $i => $value)
				$input[$i] = $this->EscapeString($value);
			return $input;
		}
		else
			return mysql_real_escape_string($input, $this->database_handler);
	}


	//Destructor, this take care of cleaning the DB connection without never being explicitely called.. This is called when object is deallocated or exit() is called or at the end of the script execution.
   function __destruct() {
		$this->Close();
   }
   
}

// I put this here so it more easily accessible by our function but feel free to move it elsewhere.
//sprintf can't handle arrays when they are given as parameter. This function can handle arrays
function sprintf_array($format, $arr)
{
        return call_user_func_array('sprintf', array_merge((array)$format, $arr));
}

?>
