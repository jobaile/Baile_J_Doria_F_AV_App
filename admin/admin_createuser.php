<?php 
	require_once('scripts/config.php');

	if(isset($_POST['submit'])){

        //for the attributes
		$fname = trim($_POST['fname']);
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$email = trim($_POST['email']);
		$access = trim($_POST['access']);
		$admin = trim($_POST['admin']);
		
		if(empty($username) || empty($password) || empty($email)) {
			$message = 'Please fill the required fields';
		}else{
			$result = createUser($fname, $username, $password, $email, $access, $admin);
			
			$message = $result;
		}
	}
