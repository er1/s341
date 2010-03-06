<?php
	session_start();

	if ($_REQUEST['username'] == "test" && $_REQUEST['password'] == "test")
	{
		echo '{"status":"ok", "loginError":"false"}';
		$_SESSION['loggedIn'] = true;
	}
	else
		echo '{"loginError":"true","reason":"invalid username/password"}';
?>