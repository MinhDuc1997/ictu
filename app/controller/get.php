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
		echo json_encode($faculty->getFaculty());
	}

	function getMajors($facultyid){
		$majors = new app_model_getData();
		echo json_encode($majors->getMajors($facultyid));
	}

	function getCourse(){
		$course = new app_model_getData();
		echo json_encode($course->getCourse());
	}

	function getClass($majorsid, $courseid){
		$class = new app_model_getData();
		echo json_encode($class->getClass($majorsid, $courseid));
	}

	function getStudent($classid){
		$sudent = new app_model_getData();
		echo json_encode($sudent->getStudent($classid));
	}
}
?>