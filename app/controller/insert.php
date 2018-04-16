<?php
class app_controller_insert{

	function addStudent($studentid, $firstname, $lastname, $birthday, $gender, $provinceid, $email, $phone, $classid){
		$addS = new app_model_insertData();;
		echo $addS->addStudent($studentid, $firstname, $lastname, $birthday, $gender, $provinceid, $email, $phone, $classid);
	}	

	function addParent($studentid, $parentname, $parentphone){
		$addP = new app_model_insertData();
		echo $addP->addParent($studentid, $parentname, $parentphone);
	}

	function addResidence($studentid, $provinceid, $address){
		$addR = new app_model_insertData();
		echo $addR->addResidence($studentid, $provinceid, $address);
	}
}
?>