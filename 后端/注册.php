<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
    header("Access-Control-Allow-Origin:*");
    //include 'base.php';
    header('content-type:text/html;charset=utf-8');
    $servername = "localhost";
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
    $username=$_POST['username'];
    $truename=$_POST['truename'];
    $gender=$_POST["gender"];
    $password=$_POST['password'];
    $phone = $_POST["phone"];
    $email = $_POST["email"];
    $address = $_POST["address"];
    $sql="select * from user where username='$username';";
    $sql2="insert into user (`username`,`truename`,`gender`,`password`,`phone`,`email`,`address`) VALUES('$username','$truename','$gender','$password','$phone','$email','$address');";
    $res=mysqli_query($conn,$sql);
    $res2=mysqli_query($conn,$sql2);
    if($res2){
        echo '注册成功';
    }
   /* if(!empty($res)){
        echo '用户名已存在';
    }else {
        $res2=mysqli_query($conn,$sql2);
        if($res2){
            echo '注册成功';
        }
    }*/



    ?>
