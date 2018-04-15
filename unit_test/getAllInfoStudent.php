
<?php
	function getInfoStudent($studentid){
	    $conn = mysqli_connect("localhost", "root", "", "ictu");
	    mysqli_set_charset($conn, 'utf8');
	    $query = "SELECT * FROM student, residence, province, faculty, majors, course, class, parent WHERE student.studentid = residence.studentid AND student.classid = class.classid AND student.studentid = '$studentid' AND student.provinceid = province.provinceid AND class.majorsid = majors.majorsid AND faculty.facultyid = majors.facultyid AND class.courseid = course.courseid AND student.studentid = parent.studentid GROUP BY student.studentid";
	    $result = mysqli_query($conn, $query);
	    
	    $arr = [];
	    while($rows = mysqli_fetch_assoc($result)){
	    	$ymd = $rows['birthday'];
			$dmy = date("m/d/Y", strtotime($ymd));
	    	if(empty($rows['isdorm'])){
	    		$arr_temp = array('id' =>  $rows['studentid'],
	    		'firstname' => $rows['firstname'],
	    		'lastname' =>  $rows['lastname'],
	    		'birthday' => $dmy,
	    		'gender' => $rows['gender'],
	    		'countryid' =>$rows['provinceid'],
	    		'country' => $rows['provincename'],
	    		'address' => $rows['ismotel'],
	    		'studying' => $rows['studying'],
	    		'phone' => $rows['phone'],
	    		'email' => $rows['email'],
	    		'facultyid' => $rows['facultyid'],
	    		'faculty' => $rows['facultyname'],
	    		'majorsid' => $rows['majorsid'],
	    		'majors' => $rows['majorsname'],
	    		'courseid' => $rows['courseid'],
	    		'course' => $rows['coursename'],
	    		'classid' =>  $rows['classid'],
	    		'class' =>  $rows['classname'],
	    		'parent' => $rows['parentname'],
	    		'parent_number' =>$rows['parentphone']
	    		);
	    	}
	    	if(empty($rows['ismotel'])){
	    		$arr_temp = array('id' =>  $rows['studentid'],
	    		'firstname' => $rows['firstname'],
	    		'lastname' =>  $rows['lastname'],
	    		'birthday' => $dmy,
	    		'gender' => $rows['gender'],
	    		'countryid' =>$rows['provinceid'],
	    		'country' => $rows['provincename'],
	    		'address' => $rows['isdorm'],
	    		'studying' => $rows['studying'],
	    		'phone' => $rows['phone'],
	    		'email' => $rows['email'],
	    		'facultyid' => $rows['facultyid'],
	    		'faculty' => $rows['facultyname'],
	    		'majorsid' => $rows['majorsid'],
	    		'majors' => $rows['majorsname'],
	    		'courseid' => $rows['courseid'],
	    		'course' => $rows['coursename'],
	    		'classid' =>  $rows['classid'],
	    		'class' =>  $rows['classname'],
	    		'parent' => $rows['parentname'],
	    		'parent_number' =>$rows['parentphone']
	    		);	
	    	}
	    	$arr[] = $arr_temp;
	    }
	    return $arr;
	}
	$studentid = 'DTC155D4802010003';
	echo '<pre>';
	print_r(getInfoStudent($studentid));
	echo '</pre>';
?>