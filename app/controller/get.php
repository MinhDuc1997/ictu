<?php
class app_controller_get{

	function login(){
		$login = new app_model_login();
	}

	function logout(){
		$logout = new app_model_logout();
	}

	function getFaculty(){
		$faculty = new app_model_getData();
		//print_r($faculty->getFaculty());
		echo json_encode($faculty->getFaculty());
	}

	function test($p0){
		//echo $p0;
		$obj_test = new app_model_test();
		$obj_arr = $obj_test->test();
		echo json_encode($obj_arr);
	}
}
?>