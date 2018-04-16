<?php
class app_controller_update{

	function updateGeneralInfo($studentid, $firstname, $lastname, $gender, $email, $phone, $birthday){
		$updateGeneral = new app_model_updateData();
		echo $updateGeneral->updateGeneralInfo($studentid, $firstname, $lastname, $gender, $email, $phone, $birthday);
	}

	function updateProvinceInfo($studentid, $provinceid){
		$updateProvince = new app_model_updateData();
		echo $updateProvince->updateProvinceInfo($studentid, $provinceid);
	}

	function updateParentInfo($studentid, $new_parentname, $new_parentphone){
		$updateParent = new app_model_updateData();
		echo $updateParent-> updateParentInfo($studentid, $new_parentname, $new_parentphone);
	}

	function updateClassInfo($studentid, $new_classid){
		$updateClass = new app_model_updateData();
		echo $updateClass->updateClassInfo($studentid, $new_classid);
	}

	function updateResidenceInfo($studentid, $new_address){
		$updateResidence = new app_model_updateData();
		echo $updateResidence->updateResidenceInfo($studentid, $new_address);
	}

}
?>