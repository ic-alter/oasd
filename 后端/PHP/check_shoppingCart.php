<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';
include 'pojo/ShoppingCart.inc';

$username = $_POST['username'];
//$username = "icalter";

$sql_my_shopping = "select * from shoppingcart where username='$username';";
$res_my_shopping = mysqli_query($conn,$sql_my_shopping);
$size = mysqli_num_rows($res_my_shopping);
$data = array();
for ($i=0;$i<$size;$i++){
    $row = mysqli_fetch_assoc($res_my_shopping);
    $shoppingCart = new ShoppingCart($conn,$row);
    array_push($data,$shoppingCart);
}

header("Content-type: application/json; charset=utf-8");
echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
