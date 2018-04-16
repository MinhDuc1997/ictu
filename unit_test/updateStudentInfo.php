<?php
	//Cập nhật thông tin chung về sinh viên
	function updateGeneralInfo($conn, $studentid, $new_firstname, $new_lastname, $new_gender, $new_email, $new_phone, $new_dateofbirth){
		
		if(empty($studentid) || empty($new_firstname) || empty($new_lastname) || empty($new_gender)
			|| empty($new_email) || empty($new_phone) || empty($new_dateofbirth)){
			return false;
		}
		
		$query = "UPDATE student SET firstname = '".$new_firstname."', lastname= '".$new_lastname."', gender='".$new_gender."',
			email = '".$new_email."', phone= '".$new_phone."', birthday= '".$new_dateofbirth."' WHERE studentid='".$studentid."'";
		
		if(mysqli_query($conn, $query)){
			return true;
		}else{
			return false;
		}
		return false;
	}
	//cập nhật tỉnh thành
	function updateProvinceInfo($conn, $studentid, $new_provinceid){
		if(empty($studentid) || empty($studentid) || empty($new_provinceid)){
			return false;
		}
		
		$query = "UPDATE student SET provinceid= '".$new_provinceid."' WHERE studentid= '".$studentid."'";
		$query1 = "SELECT provinceid FROM province WHERE provinceid= '".$new_provinceid."'";
		$result = mysqli_query($conn, $query1);
		
		if(mysqli_num_rows($result) < 1){
			return false;
		}else{
			if(mysqli_query($conn, $query)){
				return true;
			}else{
				return false;
			}
		}
		return false;
	}
	//cập nhật người giám hộ
	function updateParentInfo($conn, $studentid, $new_parentname, $new_parentphone){
		if(empty($studentid) || empty($new_parentname) || empty($new_parentphone)){
			return false;
		}
		
		$query = "UPDATE parent SET parentname= '".$new_parentname."', parentphone= '".$new_parentphone."' WHERE studentid= '".$studentid."'";
		
		if(mysqli_query($conn, $query)){
			return true;
		}else{
			return false;
		}
		
		return false;
	}
	//cập nhật lớp học
	function updateClassInfo($conn, $studentid, $new_classid){
		if(empty($studentid) || empty($new_classid)){
			return false;
		}
		
		$query = "UPDATE student SET classid= '".$new_classid."' WHERE studentid= '".$studentid."'";
		$query1 = "SELECT classid FROM class WHERE classid = '".$new_classid."'";
		$result = mysqli_query($conn, $query1);
		if(mysqli_num_rows($result) < 1){
			return false;
		}else{
			if(mysqli_query($conn, $query)){
				return true;
			}else{
				return false;
			}
		}
		return false;
	}
	//cập nhật nơi cư trú hiện tại
	function updateResidenceInfo($conn, $studentid, $new_provinceid, $new_address){
		if(empty($studentid) || empty($new_provinceid) || empty($new_address)){
			return false;
		}
		
		$query = "UPDATE residence SET address= '".$new_address."', provinceid= '".$new_provinceid."' WHERE studentid= '".$studentid."'";
		$query1 = "SELECT provinceid FROM province WHERE provinceid = '".$new_provinceid."'";
		$result = mysqli_query($conn, $query1);
		
		if(mysqli_num_rows($result) < 1){
			return false;
		}else{
			if(mysqli_query($conn, $query)){
				return true;
			}else{
				return false;
			}
		}
		return false;
	}
	
	//connect
	$conn = mysqli_connect("localhost", "root", "", "ictu");
	mysqli_set_charset($conn, 'utf8');
	
	
	//test variable
	$studentid = 'DTC155D3201040008';
	$new_firstname = 'Huyyyy';
	$new_lastname = 'Hà Quang';
	$new_gender = 'Nam';
	$new_email = 'huy@gmail.com';
	$new_phone = '113';
	$new_dateofbirth = '1998/2/15';
	$new_provinceid = '59';
	$new_parentname = 'Hacker IS';
	$new_parentphone = '1987';
	$new_classid = "1";
	$new_address = "Quất lâm Hà Nộ";
	
	updateGeneralInfo($conn, $studentid, $new_firstname, $new_lastname, $new_gender, $new_email, $new_phone, $new_dateofbirth);
	updateProvinceInfo($conn, $studentid, $new_provinceid);
	updateResidenceInfo($conn, $studentid, $new_provinceid, $new_address);
	updateParentInfo($conn, $studentid, $new_parentname, $new_parentphone);
	updateClassInfo($conn, $studentid, $new_classid);
?>