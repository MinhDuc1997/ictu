<?php
	function getProvince(){
	    $conn = mysqli_connect("localhost", "root", "", "ictu");
	    mysqli_set_charset($conn, 'utf8');
	    $query = "SELECT * FROM province";
	    $result = mysqli_query($conn, $query);

	    $arr = [];
	    while($rows = mysqli_fetch_assoc($result)){   
 	     	$arr_temp = [];     
            $arr_temp[] = $rows['provinceid'];
            $arr_temp[] = $rows['provincename'];
            $arr[] = $arr_temp;
        }
        return $arr;
	}
	echo '<pre>';
	print_r(getProvince());
	echo '</pre>'
?>
