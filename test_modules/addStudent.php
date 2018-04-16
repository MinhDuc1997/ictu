<?php
	$con = mysqli_connect("localhost", "root", "", "ictu");
	mysqli_set_charset($con,"UTF8");
	
	function addStudent($con, $studentid, $firstname, $lastname, $birthday, $gender, $provinceid, $email, $phone, $classid){
			
		$sql = "INSERT INTO student(studentid, firstname, lastname, birthday, gender, provinceid, email, phone, classid, studying) VALUES ('$studentid', '$firstname', '$lastname', '$birthday', '$gender', '$provinceid', '$email', '$phone', '$classid', 'yes')";
		$query = $con->query($sql);
		if(isset($query)){
			return true;
		}else{
			echo 'err1';
			return false;
		}
	}

	function addParent($con, $studentid, $parentname, $parentphone){
		$sql = "INSERT INTO parent(studentid, parentname, parentphone) VALUES ('$studentid', '$parentname', '$parentphone')";
		$query = $con->query($sql);
		if(isset($query)){
			return true;
		}else{
			echo 'err2';
			return false;
		}
	}

	function addResidence($con, $studentid, $provinceid, $address){
		$sql = "INSERT INTO residence(studentid, provinceid, address) VALUES ('$studentid', '$provinceid', '$address')";
		$query = $con->query($sql);
		if(isset($query)){
			return true;
		}else{
			echo 'err3';
			return false;
		}
	}


	addStudent($con, 'DTC145D4802010038','Đỗ Đăng','Mai','1996/05/26','Nữ','50','DTC145D4802010038@ictu.edu.vn','0985948347','42','yes');
		addParent($con,'DTC145D4802010038', 'Đỗ Đăng Hải', '0985382914');
	addResidence($con, 'DTC145D4802010038', '50', 'Xóm trọ Thanh Phượng');
	
?>