<html>
<head><title></title></head>
<body>

<?php
require_once("Database.php");
require_once("Authentication.php");
session_start();

$db = new Database();

if ($db->Connect() == False)
{
    echo "<h3>Error: Can't connect to database</h3>";
}

$auth = new Authentication();


$db->Close();

?>

</body>
</html>