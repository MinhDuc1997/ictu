<?php
  header('Content-Type: application/json; charset=UTF-8'); 
	function getFaculty(){
	    $conn = mysqli_connect("localhost", "root", "", "ictu");
	    mysqli_set_charset($conn, 'utf8');
	    $query = "SELECT * FROM faculty";
	    $result = mysqli_query($conn, $query);
	    
	    $arr = [];
	    while($rows = mysqli_fetch_assoc($result)){   
	    	$arr_temp = [];     
	        $arr_temp[] = $rows['facultyid'];
	        $arr_temp[] = $rows['facultyname'];
	        $arr[] = $arr_temp;
	    }
	    return $arr;
	}
	echo json_encode(getFaculty());
?>
