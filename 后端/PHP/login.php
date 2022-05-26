<?php
header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';



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
        $result['msg'] = "用户不存在,可能是手误输错账号了？(￣.￣)";
    } else{
        $password_db = $row_email['password'];
        if ($password_db==$password){
            $result['msg'] = "登录成功";
            $result['username'] = $row_email['username'];
        } else{
            $result['msg'] = "密码错误,是盗号的坏人吗？ヽ(#`Д´)ﾉ";
        }
    }
} else{
    /*while($row = mysqli_fetch_assoc($res1)){
        $username_db = $row['username'];
        $password_db = $row['password'];
    }*/
    $password_db = $row['password'];
    if ($password_db==$password){
        $result['msg'] = "登录成功";
        $result['username'] = $row['username'];
    } else{
        /*echo "     数据库password";
        echo $password_db;
        echo "     输入password ";
        echo $password;*/
        $result['msg'] = "密码错误,是盗号的坏人吗？ヽ(#`Д´)ﾉ";
    }
}

header("Content-type: application/json; charset=utf-8");
echo json_encode($result, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
