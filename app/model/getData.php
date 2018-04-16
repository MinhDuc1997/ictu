<?php
class app_model_getData{

    function getProvince(){
        $query = "SELECT * FROM province";
        $result = mysqli_query(connect(), $query);

        $arr = [];
        while($rows = mysqli_fetch_assoc($result)){   
            $arr_temp = [];     
            $arr_temp[] = $rows['provinceid'];
            $arr_temp[] = $rows['provincename'];
            $arr[] = $arr_temp;
        }
        return $arr;
    }

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

	function getMajors($facultyid){
        $facultyid = mysqli_real_escape_string(connect(), $facultyid);
        $query = [];
        $result = [];
        $error = "";
        
        //check if facultyid exsits in database
        $query['checkFacultyid'] = 'SELECT facultyid FROM faculty WHERE facultyid = "'.$facultyid.'"';
        $result['checkResult'] = mysqli_query(connect(), $query['checkFacultyid']);
        
        //detect input error
        if(empty($facultyid)){
            $error = "Facultyid không được để trống";
        }else if(mysqli_num_rows($result['checkResult']) < 1){
            $error = "Facultyid không tồn tại trên hệ thống";
        }
        
        //return majors data or show error if it exists
        if(empty($error)){
            $query['getMajors'] = 'SELECT majorsid, majorsname FROM majors WHERE facultyid = "'.$facultyid.'"';
            $result['majorsInfo'] = mysqli_query(connect(), $query['getMajors']);
            $arr = [];
            while($rows = mysqli_fetch_assoc($result['majorsInfo'])){
                $arr_temp = [];
                $arr_temp[] = $rows['majorsid'];
                $arr_temp[] = $rows['majorsname'];
                $arr[] = $arr_temp;
            }
            return $arr;
        }else{
            echo $error;
        }
    }

    function getCourse(){
        $query = "SELECT * FROM course";
        $result = mysqli_query(connect(), $query);

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

    function getClass($majorsid, $courseid){
        $majorsid = mysqli_real_escape_string(connect(), $majorsid);
        $courseid = mysqli_real_escape_string(connect(), $courseid);
        $query = [];
        $result = [];
        $error = "";
        $arr = [];
        //check if majorsid and courseid exsits in database
        $query['checkMajorsid'] = 'SELECT majorsid FROM majors WHERE majorsid = "'.$majorsid.'"';
        $result['checkResult1'] = mysqli_query(connect(), $query['checkMajorsid']);
        $query['checkCourseid'] = 'SELECT courseid FROM course WHERE courseid = "'.$courseid.'"';
        $result['checkResult2'] = mysqli_query(connect(), $query['checkCourseid']);

        //detect input error
        if(empty($majorsid)){
            $error = false;
        }else if(mysqli_num_rows($result['checkResult1']) < 1){
            $error = false;
        }

        if(empty($courseid)){
            $error = false;
        }else if(mysqli_num_rows($result['checkResult2']) < 1){
            $error = false;
        }
        
        //return majors data or show error if it exists
        if(empty($error)){
            $query['getClassInfo'] = 'SELECT classid, classname FROM class'.
                ' WHERE majorsid = "'.$majorsid.'" AND courseid = "'.$courseid.'"';
            $result['classInfo'] = mysqli_query(connect(), $query['getClassInfo']);
            if(mysqli_num_rows($result['classInfo']) < 1){
                 $error = false;
            }else{
                while($rows = mysqli_fetch_assoc($result['classInfo'])){
                    $arr_temp = [];
                    $arr_temp[] = $rows['classid'];
                    $arr_temp[] = $rows['classname'];
                    $arr[] = $arr_temp;
                }              
            }
        }else{
            return $error;
        }

        if($error == "")
            return $arr;
        else
            return $error;
    }

    function getStudent($classid){
        $query = "SELECT * FROM student, residence, class WHERE student.studentid = residence.studentid AND student.classid = class.classid AND student.classid = '$classid'";
        $result = mysqli_query(connect(), $query);
        
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

    function getAllInfoStudent($studentid){
        $query = "SELECT * FROM student, residence, province, faculty, majors, course, class, parent WHERE student.studentid = residence.studentid AND student.classid = class.classid AND student.studentid = '$studentid' AND student.provinceid = province.provinceid AND class.majorsid = majors.majorsid AND faculty.facultyid = majors.facultyid AND class.courseid = course.courseid AND student.studentid = parent.studentid GROUP BY student.studentid";
        $result = mysqli_query(connect(), $query);
        
        $arr = '';
        while($rows = mysqli_fetch_assoc($result)){
                $arr_temp = array('id' =>  $rows['studentid'],
                'firstname' => $rows['firstname'],
                'lastname' =>  $rows['lastname'],
                'birthday' => $rows['birthday'],
                'gender' => $rows['gender'],
                'countryid' =>$rows['provinceid'],
                'country' => $rows['provincename'],
                'address' => $rows['address'],
                'studying' => $rows['studying'],
                'email' => $rows['email'],
                'phone' => $rows['phone'],
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
            $arr = $arr_temp;
        }
        return $arr;
    }
}
?>