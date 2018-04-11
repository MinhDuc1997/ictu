<?php
	function getCourse(){
	    $conn = mysqli_connect("localhost", "root", "", "ictu");
	    mysqli_set_charset($conn, 'utf8');
	    $query = "SELECT * FROM course";
	    $result = mysqli_query($conn, $query);

        if(mysqli_num_rows($result) < 1){
            echo "Chưa có dữ liệu trong hệ thống";
        }else{
	        $arr = [];
	        while($rows = mysqli_fetch_assoc($result)){   
	        	$arr_temp = [];     
	            $arr_temp[] = $rows['courseid'];
	            $arr_temp[] = $rows['coursename'];
                $arr_temp[] = $rows['begins'];
                $arr[] = $arr_temp;
	        }
            return $arr;
        }
	}
	echo '<pre>';
	print_r(getCourse());
	echo '</pre>'
?>
