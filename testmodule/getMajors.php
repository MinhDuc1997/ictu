<?php
    function getMajors($facultyid){
        $conn = mysqli_connect("localhost", "root", "", "ictu");
 	    mysqli_set_charset($conn, 'utf8');
        $facultyid = mysqli_real_escape_string($conn, $facultyid);
        $query = [];
        $result = [];
        $error = "";
        
        //check if facultyid exsits in database
        $query['checkFacultyid'] = 'SELECT facultyid FROM faculty WHERE facultyid = "'.$facultyid.'"';
        $result['checkResult'] = mysqli_query($conn, $query['checkFacultyid']);
        
        //detect input error
        if(empty($facultyid)){
            $error = "Facultyid không được để trống";
        }else if(mysqli_num_rows($result['checkResult']) < 1){
            $error = "Facultyid không tồn tại trên hệ thống";
        }
        
        //return majors data or show error if it exists
        if(empty($error)){
            $query['getMajors'] = 'SELECT majorsid, majorsname FROM majors WHERE facultyid = "'.$facultyid.'"';
            $result['majorsInfo'] = mysqli_query($conn, $query['getMajors']);
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

    $facultyid = "CNTT";
    echo '<pre>';
    print_r(getMajors($facultyid));
    echo '</pre>';
?>
