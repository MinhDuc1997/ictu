<?php
	class app_model_logout{
		function __construct(){
			setcookie('username', $rows['adminid'], time() - 1000, "/");
			view('login', '');
		}
	}
?>