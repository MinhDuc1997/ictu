<?php
class app_model_getData{

	function getFaculty(){
	    $sql = "SELECT * FROM faculty";
	    $query = connect()->query($sql);

	    
	    $arr = [];
	    while($rows = $query->fetch_assoc()){   
	    	$arr_temp = [];     
	        $arr_temp[] = $rows['facultyid'];
	        $arr_temp[] = $rows['facultyname'];
	        $arr[] = $arr_temp;
	    }
	    return $arr;
	}
}
?>