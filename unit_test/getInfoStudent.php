<?php
	function getInfoStudent($classid){
	    $conn = mysqli_connect("localhost", "root", "", "ictu");
	    mysqli_set_charset($conn, 'utf8');
	    $query = "SELECT * FROM student, residence, class WHERE student.studentid = residence.studentid AND student.classid = class.classid AND student.classid = '$classid'";
	    $result = mysqli_query($conn, $query);
	    
	    $arr = [];
	    while($rows = mysqli_fetch_assoc($result)){
	    		$arr_temp = array('id' =>  $rows['studentid'],
	    		'firstname' => $rows['firstname'],
	    		'lastname' =>  $rows['lastname'],
	    		'birthday' => $rows['birthday'],
	    		'gender' => $rows['gender'],
	    		'class' =>  $rows['classname'],
	    		'address' => $rows['address'],
	    		'studying' => $rows['studying'],
	    		'phone' => $rows['phone']
	    		);	
	    	$arr[] = $arr_temp;
	    }
	    return $arr;
	}
	$classid = 2;
	echo '<pre>';
	print_r(getInfoStudent($classid));
	echo '</pre>';
?>