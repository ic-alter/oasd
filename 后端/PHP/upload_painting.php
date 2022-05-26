<?php

header("Access-Control-Allow-Origin:*");

$conn = null;
include 'base.php';
require 'pojo/Painting_saveToDB.inc';
$row = $_POST;
$PaintingID = $_POST['type'];
$painting = new Painting_saveToDB($row);
if ($PaintingID==0){
    $data['msg'] = $painting->save_to_DB($conn);
    $data['fileName'] = $painting->FileID;
} else{
    $data['msg'] = $painting->update_to_DB($conn,$PaintingID);
}
$data['PaintingID'] = $painting->PaintingID;
header("Content-type: application/json; charset=utf-8");
echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);