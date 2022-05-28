<?php
header("Access-Control-Allow-Origin:*");
$id = $_GET["PaintingID"];

$conn = null;
include 'base.php';
require 'pojo/Painting.inc';
include_once "pojo/MyFoot.inc";

/*$sql="select * from paintings where PaintingID='$id';";
$res=mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($res);


if (!$row){
} else{
    $heat_add_1 = $row['heat']+1;
    $sql_heat = "UPDATE paintings
                 SET heat='$heat_add_1'
                 WHERE PaintingID='$id';";
    $res_heat=mysqli_query($conn,$sql_heat);
    $ArtistID = $row['ArtistID'];
    $sql_artist="select * from artists where ArtistID='$ArtistID';";
    $res2=mysqli_query($conn,$sql_artist);
    $row2 = mysqli_fetch_assoc($res2);

    $sql_genre1="select * from paintinggenres where PaintingID='$id';";
    $res_genre1=mysqli_query($conn,$sql_genre1);
    $row_genre1 = mysqli_fetch_assoc($res_genre1);
    $GenreID = $row_genre1['GenreID'];
    $sql_genre2="select * from genres where GenreID='$GenreID';";
    $res_genre2=mysqli_query($conn,$sql_genre2);
    $row_genre2 = mysqli_fetch_assoc($res_genre2);

    $painting = new Painting($row['Title'],$row2['FirstName'].' '.$row2['LastName'],$row['ImageFileName'],$row['YearOfWork'],
        $row['Cost']."万美元",$row_genre2['GenreName'],$row['Height'],$row['Width'],$row['Description'],
        $row['upload_time'],$row['uploader'],$row['heat']+1,$row['is_sold']);*/
    $sql="select * from paintings where PaintingID='$id';";
    $res=mysqli_query($conn,$sql);
    $row = mysqli_fetch_assoc($res);
    $painting = new Painting($conn,$row);
    if ($_GET['source']=="paintingDetail"){
        $painting->heat_add1($conn);
    }
    if ($id!="暂无数据"&&$_GET['username']!=null){
        $myFoot = new MyFoot($conn,$_GET);
        $myFoot->save_or_update($conn);
    }
    header("Content-type: application/json; charset=utf-8");
    echo json_encode($painting,JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);

