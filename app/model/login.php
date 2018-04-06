<?php
class app_model_login{
	function __construct(){
		$sql = "SELECT adminid, password FROM admin WHERE adminid = '".$_POST['username']."' AND password = '".hash('sha256', $_POST['password'])."'";
		$query = connect()->query($sql);
		if($query->num_rows > 0)
			view('admin', '');
		else
			echo 'Sai tai khoan hoac mat khau';
	}	
}
?>