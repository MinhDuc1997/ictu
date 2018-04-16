<?php
	function getFaculty(){
	    $conn = mysqli_connect("localhost", "root", "123", "ictu");
	    mysqli_set_charset($conn, 'utf8');
	    $query = "SELECT * FROM faculty";
	    $result = mysqli_query($conn, $query);

        if(mysqli_num_rows($result) < 1){
            echo "Chưa có dữ liệu trong hệ thống";
        }else{
	        $arr = [];
	        while($rows = mysqli_fetch_assoc($result)){   
	        	$arr_temp = [];     
	            $arr_temp[] = $rows['facultyid'];
	            $arr_temp[] = $rows['facultyname'];
	            $arr[] = $arr_temp;
	        }
            return $arr;
        }
	}
	echo '<pre>';
	print_r(getFaculty());
	echo '</pre>'
?>
