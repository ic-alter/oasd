<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';
include_once 'pojo/Order.inc';

$username = $_POST["username"];

$sql_all_order = "select * from orders WHERE username='$username';";
$res_all_order = mysqli_query($conn,$sql_all_order);
$size = mysqli_num_rows($res_all_order);
//echo $size;
$data = array();
for ($i=0;$i<$size;$i++){
    $row = mysqli_fetch_assoc($res_all_order);
    $order = new Order($conn,$row);
    //echo $painting;
    array_push($data,$order);
}
header("Content-type: application/json; charset=utf-8");
echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
