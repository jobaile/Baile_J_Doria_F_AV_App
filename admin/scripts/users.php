<?php 

    if (isset($_GET['allusers'])) {
        include('connect.php');

        $query = 'SELECT * FROM tbl_user';

        $getAllUsers = $pdo->prepare($query);
        $getAllUsers->execute();

        $users = array();

        while($user = $getAllUsers->fetch(PDO::FETCH_ASSOC)) {
            $currentuser =  array();
            $currentuser['id'] = $user['user_id'];
            $currentuser['username'] = $user['user_name'];
            $currentuser['admin'] = $user['user_admin'];
            $currentuser['access'] = $user['user_access'];
            $currentuser['avatar'] = $user['user_avatar'];

            $users[] = $currentuser;
        }

        echo json_encode($users);
    }

    function createUser($fname,$username,$password,$email, $access, $admin){
		include('connect.php');
	
		$create_user_query = 'INSERT INTO tbl_user(user_fname,user_name,user_pass,user_email, user_access, user_admin)';
		$create_user_query .= ' VALUES(:fname,:username,:password,:email, :access, :admin)';

		$create_user_set = $pdo->prepare($create_user_query);
		$create_user_set->execute(
			array(
				':fname'=>$fname,
				':username'=>$username,
				':password'=>$password,
                ':email'=>$email,
                ':access'=>$access,
                ':admin'=>$admin
			)
		);

		if($create_user_set->rowCount()){
			redirect_to('index.php');
		}else{
			$message = 'Your hiring practices have failed you.. this individual sucks...';
			return $message;
		}
}
