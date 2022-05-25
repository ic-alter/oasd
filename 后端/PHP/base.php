<?php
header("Access-Control-Allow-Origin:*");
//include 'base.php';
header('content-type:text/html;charset=utf-8');
$servername = "localhost";
$username = "root";
$password = "12345678";
$db_name = "lab_db";
$conn=mysqli_connect($servername,$username,$password,$db_name); //连接数据库
//连接数据库错误提示
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
mysqli_query($conn,"set names utf8"); //数据库编码格式





