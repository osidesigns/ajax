<?php
	
	$fullName = $_GET['fullName']; //fullName data
	$username = $_GET['username']; //username data
	$age      = $_GET['age'];     //age data


	echo 'Hello '. $fullName . ' your username is '. $username . '  you are ' . $age . ' years old. Welcome aboard.';