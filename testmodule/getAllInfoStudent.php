
<?php
	function getInfoStudent($studentid){
	    $conn = mysqli_connect("localhost", "root", "", "ictu");
	    mysqli_set_charset($conn, 'utf8');
	    $query = "SELECT * FROM student, residence, province, faculty, majors, course, class WHERE student.studentid = residence.studentid AND student.classid = class.classid AND student.studentid = '$studentid' AND student.provinceid = province.provinceid AND class.majorsid = majors.majorsid AND faculty.facultyid = majors.facultyid AND class.courseid = course.courseid GROUP BY student.studentid";
	    $result = mysqli_query($conn, $query);
	    
	    $arr = [];
	    while($rows = mysqli_fetch_assoc($result)){
	    	if(empty($rows['isdorm'])){
	    		$arr_temp = array('id' =>  $rows['studentid'],
	    		'firstname' => $rows['firstname'],
	    		'lastname' =>  $rows['lastname'],
	    		'birthday' => $rows['birthday'],
	    		'gender' => $rows['gender'],
	    		'country' => $rows['provincename'],
	    		'address' => $rows['ismotel'],
	    		'studying' => $rows['studying'],
	    		'phone' => $rows['phone'],
	    		'faculty' => $rows['facultyname'],
	    		'majors' => $rows['majorsname'],
	    		'course' => $rows['coursename'],
	    		'class' =>  $rows['classname'],
	    		);
	    	}
	    	if(empty($rows['ismotel'])){
	    		$arr_temp = array('id' =>  $rows['studentid'],
	    		'firstname' => $rows['firstname'],
	    		'lastname' =>  $rows['lastname'],
	    		'birthday' => $rows['birthday'],
	    		'gender' => $rows['gender'],
	    		'country' => $rows['provincename'],
	    		'address' => $rows['isdorm'],
	    		'studying' => $rows['studying'],
	    		'phone' => $rows['phone'],
	    		'faculty' => $rows['facultyname'],
	    		'majors' => $rows['majorsname'],
	    		'course' => $rows['coursename'],
	    		'class' =>  $rows['classname']
	    		);	
	    	}
	    	$arr[] = $arr_temp;
	    }
	    return $arr;
	}
	$studentid = 'DTC155D3201040008';
	echo '<pre>';
	print_r(getInfoStudent($studentid));
	echo '</pre>';
?>