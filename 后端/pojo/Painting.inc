<?php

include "base.php";
class Painting{
    public $title;
    public $artist;
    public $img_path;
    public $YearOfWork;
    public $cost;
    public $genre;
    public $height;
    public $width;
    public $description;
    public $upload_time;
    public $uploader;
    public $heat;
    public $is_sold;

    /*public function __construct($title,$artist,$img_path,$YearOfWork,$cost,$genre,$height,$width,$description,$upload_time,$uploader,$heat,$is_sold){
        $this->title = $title;
        $this->artist = $artist;
        $this->img_path = $img_path;
        $this->YearOfWork = $YearOfWork;
        $this->cost = $cost;
        $this->genre = $genre;
        $this->height = $height;
        $this->width = $width;
        $this->description = $description;
        $this->upload_time = $upload_time;
        $this->uploader = $uploader;
        $this->heat = $heat;
        $this->is_sold = $is_sold;
    }*/
    public function __construct(){}



    public function get_painting_fromDB_and_heat_add1($conn,$id){
        $sql="select * from paintings where PaintingID='$id';";
        $res=mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($res);

        if (!$row){
        } else {
            $heat_add_1 = $row['heat'] + 1;
            $sql_heat = "UPDATE paintings
                 SET heat='$heat_add_1'
                 WHERE PaintingID='$id';";
            $res_heat = mysqli_query($conn, $sql_heat);
            $ArtistID = $row['ArtistID'];
            $sql_artist = "select * from artists where ArtistID='$ArtistID';";
            $res2 = mysqli_query($conn, $sql_artist);
            $row2 = mysqli_fetch_assoc($res2);

            $sql_genre1 = "select * from paintinggenres where PaintingID='$id';";
            $res_genre1 = mysqli_query($conn, $sql_genre1);
            $row_genre1 = mysqli_fetch_assoc($res_genre1);
            $GenreID = $row_genre1['GenreID'];
            $sql_genre2 = "select * from genres where GenreID='$GenreID';";
            $res_genre2 = mysqli_query($conn, $sql_genre2);
            $row_genre2 = mysqli_fetch_assoc($res_genre2);
           /* $row['Title'],$row2['FirstName'].' '.$row2['LastName'],$row['ImageFileName'],$row['YearOfWork'],
        $row['Cost']."万美元",$row_genre2['GenreName'],$row['Height'],$row['Width'],$row['Description'],
        $row['upload_time'],$row['uploader'],$row['heat']+1,$row['is_sold']*/
            $this->title = $row['Title'];
            $this->artist = $row2['FirstName'].' '.$row2['LastName'];
            $this->img_path = $row['ImageFileName'];
            $this->YearOfWork = $row['YearOfWork'];
            $this->cost = $row['Cost']."万美元";
            $this->genre = $row_genre2['GenreName'];
            $this->height = $row['Height'];
            $this->width = $row['Width'];
            $this->description = $row['Description'];
            $this->upload_time = $row['upload_time'];
            $this->uploader = $row['uploader'];
            $this->heat = $row['heat']+1;
            $this->is_sold = $row['is_sold'];
        }
    }
}