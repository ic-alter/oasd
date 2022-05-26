<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';

$PaintingID = $_POST['PaintingID'];

$sql_find_painting = "select * from paintings where PaintingID='$PaintingID';";
$res_find_painting = mysqli_query($conn,$sql_find_painting);
$row_find_painting = mysqli_fetch_assoc($res_find_painting);
if ($row_find_painting['is_sold']!=0){
    echo "已经卖掉了，不能删除了哦φ(>ω<*) ";
} else{
    $sql_delete = "DELETE FROM paintings where PaintingID='$PaintingID';";
    $res_delete = mysqli_query($conn,$sql_delete);
    $sql_delete_genre = "DELETE FROM paintinggenres where PaintingID='$PaintingID';";
    $res_delete_genre = mysqli_query($conn,$sql_delete_genre);
    echo "mizuki已经删除掉这个作品了哦(￣▽￣)~*";
}
