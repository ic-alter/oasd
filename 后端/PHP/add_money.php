<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';
include 'pojo/User.inc';

$user = new User($conn,$_POST['username']);
$user->add_money($conn,$_POST['money']);
echo "氪金成功";