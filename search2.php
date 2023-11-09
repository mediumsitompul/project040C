<?php
define('HOST', '192.168.100.240:6607');
define('USER', 'pqr');
define('PASS', 'Pensi2021');
define('DB', 'db_restapi');
$connect = mysqli_connect(HOST, USER, PASS, DB) or die('Not Connect');
?>

<?php
$student_id = trim($_POST['search2']);

$queryResult=$connect->
	query("SELECT tuition_fee, datetime_entry FROM t_students_bank WHERE student_id='".$student_id."'");
$result=array();
while($fetchData=$queryResult->fetch_assoc()) {
	$result[]=$fetchData;
}
//Send back data to Flutter
    if($result){
        echo json_encode($result);
    }else{
        echo json_encode('');
    }
?>



