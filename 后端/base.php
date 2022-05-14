<?php
header('content-type:text/html;charset=utf-8');
$servername = "localhost:3306";
$username = "root";
$password = "12345678";
$db_name = "lab_db";
//$conn = mysqli_connect($servername,$username,$password,$db_name);
//mysqli_query('set names utf8');
$conn=mysqli_connect($servername,$username,$password,$db_name); //连接数据库

//连接数据库错误提示

if ($conn->connect_error) {

    die("连接失败: " . $conn->connect_error);

}

echo "连接成功";

mysqli_query($conn,"set names utf8"); //数据库编码格式





