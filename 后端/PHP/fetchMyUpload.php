<?php

header("Access-Control-Allow-Origin:*");

$conn = null;
include 'base.php';
require 'pojo/Painting.inc';

$username = $_POST["username"];
//$username = "icalter";
//WHERE uploader='$username'
$sql_fetch_upload = "select * from paintings WHERE uploader='".$username."';";
$res_fetch_upload = mysqli_query($conn,$sql_fetch_upload);
$size = mysqli_num_rows($res_fetch_upload);
//echo $size;
$data = array();
for ($i=0;$i<$size;$i++){
    $row = mysqli_fetch_assoc($res_fetch_upload);
    $painting = new Painting($conn,$row);
    //echo $painting;
    array_push($data,$painting);
}
header("Content-type: application/json; charset=utf-8");
echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
