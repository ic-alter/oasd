<?php

header("Access-Control-Allow-Origin:*");

$conn = null;
include 'base.php';
require 'pojo/Painting_saveToDB.inc';
$row = $_POST;
$painting = new Painting_saveToDB($row);
$data['msg'] = $painting->save_to_DB($conn);
$data['fileName'] = $painting->FileID;
header("Content-type: application/json; charset=utf-8");
echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);