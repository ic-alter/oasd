<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';
include_once "pojo/ShoppingCart.inc";

$PaintingID = $_POST['PaintingID'];

$sql_find_painting = "select * from paintings where PaintingID='$PaintingID';";
$res_find_painting = mysqli_query($conn,$sql_find_painting);
$row_find_painting = mysqli_fetch_assoc($res_find_painting);
$sql_cart = "select * from shoppingcart where PaintingID='$PaintingID';";
$res_cart = mysqli_query($conn,$sql_cart);
$row_cart = mysqli_fetch_assoc($res_cart);
if ($row_find_painting['is_sold']!=0){
    echo "已经卖掉了，不能删除了哦φ(>ω<*) ";
} else if($row_cart){
    echo "已经被人加入购物车了，不可以删除";
} else{
    $sql_delete = "DELETE FROM paintings where PaintingID='$PaintingID';";
    $res_delete = mysqli_query($conn,$sql_delete);
    $sql_delete_genre = "DELETE FROM paintinggenres where PaintingID='$PaintingID';";
    $res_delete_genre = mysqli_query($conn,$sql_delete_genre);
    echo "mizuki已经删除掉这个作品了哦(￣▽￣)~*";
}
