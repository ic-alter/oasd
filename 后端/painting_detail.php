<?php
header("Access-Control-Allow-Origin:*");
$id = $_GET["id"];

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';

$sql="select * from paintings where PaintingID='$id';";
$res=mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($res);


class Painting{
    public $title;
    public $artist;
    public $img_path;
    public $YearOfWork;
    public $cost;
    public $genre;
    public $height;
    public $width;

    public function __construct($title,$artist,$img_path,$YearOfWork,$cost,$genre,$height,$width){
        $this->title = $title;
        $this->artist = $artist;
        $this->img_path = $img_path;
        $this->YearOfWork = $YearOfWork;
        $this->cost = $cost;
        $this->genre = $genre;
        $this->height = $height;
        $this->width = $width;
    }
}
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

$painting = new Painting($row['Title'],$row2['FirstName'].' '.$row2['LastName'],$row['ImageFileName'],$row['YearOfWork'],$row['Cost']."万美元",$row_genre2['GenreName'],$row['Height'],$row['Width']);
header("Content-type: application/json; charset=utf-8");
echo json_encode($painting,JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);