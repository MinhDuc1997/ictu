<?php
class app_model_updateData{

	function updateGeneralInfo($studentid, $new_firstname, $new_lastname, $new_gender, $new_email, $new_phone, $new_dateofbirth){
		
		if(empty($studentid) || empty($new_firstname) || empty($new_lastname) || empty($new_gender)
			|| empty($new_email) || empty($new_phone) || empty($new_dateofbirth)){
			return '0';
		}
		
		$query = "UPDATE student SET firstname = '".$new_firstname."', lastname= '".$new_lastname."', gender='".$new_gender."',
			email = '".$new_email."', phone= '".$new_phone."', birthday= '".$new_dateofbirth."' WHERE studentid='".$studentid."'";
		
		if(mysqli_query(connect(), $query)){
			return '1';
		}else{
			return '0';
		}
		return '0';
	}
	//cập nhật tỉnh thành
	function updateProvinceInfo($studentid, $new_provinceid){
		if(empty($studentid) || empty($new_provinceid)){
			return '0';
		}
		
		$query = "UPDATE student SET provinceid= '".$new_provinceid."' WHERE studentid= '".$studentid."'";
		$query1 = "SELECT provinceid FROM province WHERE provinceid= '".$new_provinceid."'";
		$result = mysqli_query(connect(), $query1);
		
		if(mysqli_num_rows($result) < 1){
			return '0';
		}else{
			if(mysqli_query(connect(), $query)){
				return '1';
			}else{
				return '0';
			}
		}
		return '0';
	}
	//cập nhật người giám hộ
	function updateParentInfo($studentid, $new_parentname, $new_parentphone){
		if(empty($studentid) || empty($new_parentname) || empty($new_parentphone)){
			return '0';
		}
		
		$query = "UPDATE parent SET parentname= '".$new_parentname."', parentphone= '".$new_parentphone."' WHERE studentid= '".$studentid."'";
		
		if(mysqli_query(connect(), $query)){
			return '1';
		}else{
			return '0';
		}
		
		return '0';
	}
	//cập nhật lớp học
	function updateClassInfo($studentid, $new_classid){
		if(empty($studentid) || empty($new_classid)){
			return '0';
		}
		
		$query = "UPDATE student SET classid= '".$new_classid."' WHERE studentid= '".$studentid."'";
		$query1 = "SELECT classid FROM class WHERE classid = '".$new_classid."'";
		$result = mysqli_query(connect(), $query1);
		if(mysqli_num_rows($result) < 1){
			return '0';
		}else{
			if(mysqli_query(connect(), $query)){
				return '1';
			}else{
				return '0';
			}
		}
		return '0';
	}
	//cập nhật nơi cư trú hiện tại
	function updateResidenceInfo($studentid, $new_address){
		if(empty($studentid) || empty($new_address)){
			return '0';
		}
		
		$query = "UPDATE residence SET address= '".$new_address."' WHERE studentid= '".$studentid."'";
	
		$result = mysqli_query(connect(), $query);
		
		if($result){
			return '1';
		}else{
			return '0';
		}
		return '0';
	}

	function updateStudentStatus($studentid, $status){
    	$sql = "UPDATE student SET studying = '$status' WHERE studentid = '$studentid'";
        $query = connect()->query($sql);
        if($query){
        	return '1';
        }else{
        	return '0';
        }
    }
}
?>