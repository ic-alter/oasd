<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';

$sql_if_update = "select * from global "
