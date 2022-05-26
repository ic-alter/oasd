<?php
header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';
include 'pojo/User.inc';

$username = $_POST['username'];

$user = new User($conn,$username);
header("Content-type: application/json; charset=utf-8");
echo json_encode($user,JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
