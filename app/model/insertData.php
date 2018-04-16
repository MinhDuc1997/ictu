<?php
class app_model_insertData{
	
	function addStudent($studentid, $firstname, $lastname, $birthday, $gender, $provinceid, $email, $phone, $classid){
			
		$sql = "INSERT INTO student(studentid, firstname, lastname, birthday, gender, provinceid, email, phone, classid, studying) VALUES ('$studentid', '$firstname', '$lastname', '$birthday', '$gender', '$provinceid', '$email', '$phone', '$classid', 'yes')";
		$query = connect()->query($sql);
		if($query){
			return '1';
		}else{
			return '0';
		}
	}

	function addParent($studentid, $parentname, $parentphone){
		$sql = "INSERT INTO parent(studentid, parentname, parentphone) VALUES ('$studentid', '$parentname', '$parentphone')";
		$query = connect()->query($sql);
		if(isset($query)){
			return '1';
		}else{
			return '0';
		}
	}

	function addResidence($studentid, $provinceid, $address){
		$sql = "INSERT INTO residence(studentid, provinceid, address) VALUES ('$studentid', '$provinceid', '$address')";
		$query = connect()->query($sql);
		if(isset($query)){
			return '1';
		}else{
			return '0';
		}
	}
}
?>