<?php
    function updateStudentStatus($studentid, $status){
        $conn = mysqli_connect("localhost", "root", "", "ictu");
 	    mysqli_set_charset($conn, 'utf8');
        $studentid = mysqli_real_escape_string($conn, $studentid);
        $query = [];
        $result = [];
        $error = "";
 
        //check if studentid exsits in database
        $query['checkStudentid'] = 'SELECT studentid FROM student WHERE studentid = "'.$studentid.'"';
        $result['checkResult'] = mysqli_query($conn, $query['checkStudentid']);
        
        //detect input error
        if(empty($studentid)){
            $error = false;
        }else if(mysqli_num_rows($result['checkResult']) < 1){
            $error = false;
        }

        if(empty($status)){
            $error = false;
        }else if($status != "yes" && $status != "no"){
            $error = false;
        }
        
        //return majors data or show error if it exists
        if(empty($error)){
            $query['updateStatus'] = 'UPDATE student SET studying = "'.$status.'" WHERE studentid = "'.$studentid.'"';
            if(mysqli_query($conn, $query['updateStatus'])){
                return true;
            }else{
                return false;
            }
        }else{
            return $error;
        }
    }

    $studentid = "DTC155D3201040008";
    $status = "no";
    echo '<pre>';
    print_r(updateStudentStatus($studentid, $status));
    echo '</pre>';
?>
