<?php

header("Access-Control-Allow-Origin:*");

$conn = null;
include 'base.php';
require 'pojo/Painting_saveToDB.inc';
$row = $_POST;
$painting = new Painting_saveToDB($row);
echo $painting->save_to_DB($conn);
