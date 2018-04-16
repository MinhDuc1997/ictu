<?php
class app_model_search{

	function search($value){
        $value = trim($value);
        $lastname = "";
        $firstname = "";
        $pos = mb_strrpos($value, " ");
        if($pos > 0){
            $lastname = mb_substr($value, $pos);
            $lastname = trim($lastname);
            $firstname = mb_substr($value, 0, mb_strlen($value) - mb_strlen($lastname));
            $firstname = trim($firstname);
        }
        

        $conn = mysqli_connect("localhost", "root", "", "ictu");
        mysqli_set_charset($conn, "utf8");
        
        if(empty($value)){
            return false;
        }else{
            $query = "SELECT * FROM student, residence, class" .
                " WHERE student.studentid = residence.studentid AND student.classid = class.classid AND" .
                " (student.firstname REGEXP '.*".$value.".*' OR student.lastname REGEXP '.*".$value.".*')";
            $result = mysqli_query($conn, $query);
            if(mysqli_num_rows($result) < 1){
                $query = "SELECT * FROM student, residence, class" .
                " WHERE student.studentid = residence.studentid AND student.classid = class.classid AND" .
                " (student.firstname REGEXP '.*".$firstname.".*' AND student.lastname REGEXP '.*".$lastname.".*')";
                $result = mysqli_query($conn, $query);
            }
            
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
                    
        }
        return $arr;
    }
}
?>