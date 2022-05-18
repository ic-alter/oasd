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


$username=$_POST['username'];
$password=$_POST['password'];

$sql_username="select * from user where username='$username';";
$sql_email="select * from user where email='$username';";
$res1=mysqli_query($conn,$sql_username);
$res2 = mysqli_query($conn,$sql_email);

$username_db = "";
$password_db = "";
$row = mysqli_fetch_assoc($res1);
$row_email = mysqli_fetch_assoc($res2);

if (!($row>0)){
    //echo "不是用户名";
    if (!($row_email>0)){
        echo "用户不存在";
    } else{
        $password_db = $row_email['password'];
        if ($password_db==$password){
            echo "登录成功";
        } else{
            echo "密码错误";
        }
    }
} else{
    /*while($row = mysqli_fetch_assoc($res1)){
        $username_db = $row['username'];
        $password_db = $row['password'];
    }*/
    $password_db = $row['password'];
    if ($password_db==$password){
        echo "登录成功";
    } else{
        /*echo "     数据库password";
        echo $password_db;
        echo "     输入password ";
        echo $password;*/
        echo "密码错误";
    }
}

$conn = null;
