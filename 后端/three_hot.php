<?php

header("Access-Control-Allow-Origin:*");

$conn = null;
include 'base.php';
require 'pojo/Painting.inc';

$sql_three_hot = "SELECT * From paintings ORDER BY heat DESC LIMIT 3;";
$res_three_hot = $res=mysqli_query($conn,$sql_three_hot);
$row_1 = mysqli_fetch_assoc($res_three_hot);
$row_2 = mysqli_fetch_assoc($res_three_hot);
$row_3 = mysqli_fetch_assoc($res_three_hot);
$painting_list = [new Painting($conn,$row_1),new Painting($conn,$row_2),new Painting($conn,$row_3)];
header("Content-type: application/json; charset=utf-8");
echo json_encode($painting_list, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);

