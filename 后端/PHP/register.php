<?php
    header("Access-Control-Allow-Origin:*");
    $conn = null;
    include 'base.php';

    $username=$_POST['username'];
    $truename=$_POST['truename'];
    //$gender=$_POST["gender"];
    $password=$_POST['password'];
    $phone = $_POST["phone"];
    $email = $_POST["email"];
    $address = $_POST["address"];
    $sql="select * from user where username='$username';";
    $sql2="insert into user (`username`,`truename`,`password`,`phone`,`email`,`address`) VALUES('$username','$truename','$password','$phone','$email','$address');";
    $res=mysqli_query($conn,$sql);
    if (mysqli_fetch_assoc($res)>0){
        echo "用户名已存在";
    } else{
        $sql_email = "select * from user where email='$email';";
        $res_email = mysqli_query($conn,$sql_email);
        if (mysqli_fetch_assoc($res_email)>0) {
            echo "邮箱已被使用";
        }else{
            $res2=mysqli_query($conn,$sql2);
            echo "注册成功";
        }
    }
    /*if($res2){
        echo '注册成功';
    }*/
   /* if(!empty($res)){
        echo '用户名已存在';
    }else {
        $res2=mysqli_query($conn,$sql2);
        if($res2){
            echo '注册成功';
        }
    }*/

    /*$array = array("$username","$password");
    echo json_encode($array);
    $conn = null;*/
