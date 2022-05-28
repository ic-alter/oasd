<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';
include_once 'pojo/MyFoot.inc';

$username = $_POST["username"];
$foot_num = 6;

$data = array();

$sql_my_foot = "select * from myfoot WHERE username='$username' ORDER BY visitTime DESC LIMIT $foot_num;";
$res_my_foot = mysqli_query($conn,$sql_my_foot);
$size_my_foot = mysqli_num_rows($res_my_foot);
for ($j=0;$j<$size_my_foot;$j++){
    $row_my_foot = mysqli_fetch_assoc($res_my_foot);
    $foot = new MyFoot($conn,$row_my_foot);
        array_push($data,$foot);
}
header("Content-type: application/json; charset=utf-8");
echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
