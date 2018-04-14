<?php
    function getClassInfo($majorsid, $courseid){
        $conn = mysqli_connect("localhost", "root", "", "ictu");
        mysqli_set_charset($conn, 'utf8');
        $majorsid = mysqli_real_escape_string($conn, $majorsid);
        $courseid = mysqli_real_escape_string($conn, $courseid);
        $query = [];
        $result = [];
        $error = "";
        $arr = [];
        //check if majorsid and courseid exsits in database
        $query['checkMajorsid'] = 'SELECT majorsid FROM majors WHERE majorsid = "'.$majorsid.'"';
        $result['checkResult1'] = mysqli_query($conn, $query['checkMajorsid']);
        $query['checkCourseid'] = 'SELECT courseid FROM course WHERE courseid = "'.$courseid.'"';
        $result['checkResult2'] = mysqli_query($conn, $query['checkCourseid']);

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
            $result['classInfo'] = mysqli_query($conn, $query['getClassInfo']);
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

    $majorsid = "2";
    $courseid = "1";
    echo '<pre>';
    print_r(getClassInfo($majorsid, $courseid));
    echo '</pre>';
?>
