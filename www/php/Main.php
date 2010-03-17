<html>
<head><title></title></head>
<body>

<?php

require_once("Database.php");
require_once("Authentication.php");
session_start();

global $db;
$db = new Database();

if ($db->Connect() == False)
{
    echo "<h3>Error: Can't connect to database</h3>";
}

$auth = new Authentication();

if (isset($_GET["action"]))
{
	switch ($_GET["action"])
	{
		case("login"):
                        $auth->Login("bob", "lolz");
                        break;
		case("logout"):
                        $auth->Logout();
                        break;
		default:
			exit();
	}
}

$db->Close();

?>

</body>
</html>