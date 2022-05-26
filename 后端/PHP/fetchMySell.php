<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';
include_once 'pojo/Order.inc';

$username = $_POST["username"];

$data = array();

$sql_my_sell = "select * from paintings WHERE uploader='$username' and is_sold=1;";
$res_my_sell = mysqli_query($conn,$sql_my_sell);
$size_my_sell = mysqli_num_rows($res_my_sell);
for ($j=0;$j<$size_my_sell;$j++){
    $row_my_sell = mysqli_fetch_assoc($res_my_sell);
    $PaintingID = $row_my_sell['PaintingID'];
    $sql_all_order = "select * from orders WHERE PaintingID='$PaintingID';";
    $res_all_order = mysqli_query($conn,$sql_all_order);
    $size = mysqli_num_rows($res_all_order);
    for ($i=0;$i<$size;$i++){
        $row = mysqli_fetch_assoc($res_all_order);
        $order = new Order($conn,$row);
        //echo $painting;
        array_push($data,$order);
    }
}
header("Content-type: application/json; charset=utf-8");
echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
