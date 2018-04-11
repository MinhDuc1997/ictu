<?php
class app_model_login{
	function __construct(){
		$sql = "SELECT adminid, password FROM admin WHERE adminid = '".$_POST['username']."' AND password = '".hash('sha256', $_POST['password'])."' AND level = '1'";
		$query = connect()->query($sql);
		if($query->num_rows > 0){
			$rows = $query->fetch_assoc();
			setcookie('username', $rows['adminid'], time() + (60*60)*30, "/");
			echo '1';
		}
		else{
			echo '0';
		}
	}	
}
?>