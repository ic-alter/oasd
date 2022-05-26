<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';

$PaintingID = $_POST['PaintingID'];

$sql_prepare_update = "UPDATE global SET permission=1,AssociateID='$PaintingID' WHERE GlobalID=1";
$res_prepare_update = mysqli_query($conn,$sql_prepare_update);
echo "mizuki";
