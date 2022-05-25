<?php

class Painting{
    public $id;
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
    public function __construct($conn,$row){
        if (!$row){
        } else {
            $id = $row['PaintingID'];
            $ArtistID = $row['ArtistID'];
            $sql_artist = "select * from artists where ArtistID='$ArtistID';";
            $res2 = mysqli_query($conn, $sql_artist);
            $row2 = mysqli_fetch_assoc($res2);
            if($row2){//存在某些作品的作者未定义
                $this->artist = $row2['FirstName'].' '.$row2['LastName'];
            }

            $sql_genre1 = "select * from paintinggenres where PaintingID='$id';";
            $res_genre1 = mysqli_query($conn, $sql_genre1);
            $row_genre1 = mysqli_fetch_assoc($res_genre1);
            if ($row_genre1){//存在某些作品没有genre属性
                $GenreID = $row_genre1['GenreID'];
                $sql_genre2 = "select * from genres where GenreID='$GenreID';";
                $res_genre2 = mysqli_query($conn, $sql_genre2);
                $row_genre2 = mysqli_fetch_assoc($res_genre2);
                $this->genre = $row_genre2['GenreName'];
            }
            /* $row['Title'],$row2['FirstName'].' '.$row2['LastName'],$row['ImageFileName'],$row['YearOfWork'],
         $row['Cost']."万美元",$row_genre2['GenreName'],$row['Height'],$row['Width'],$row['Description'],
         $row['upload_time'],$row['uploader'],$row['heat']+1,$row['is_sold']*/
            $this->id = $row['PaintingID'];
            $this->title = $row['Title'];
            $this->img_path = $row['ImageFileName'];
            $this->YearOfWork = $row['YearOfWork'];
            $this->cost = $row['Cost']."万美元";
            $this->height = $row['Height'];
            $this->width = $row['Width'];
            $this->description = $row['Description'];
            $this->upload_time = $row['upload_time'];
            $this->uploader = $row['uploader'];
            $this->heat = $row['heat'];
            $this->is_sold = $row['is_sold'];
        }
    }



    public function heat_add1($conn){
        $id = $this->id;
        $sql="select * from paintings where PaintingID='$id';";
        /*$res=mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($res);*/
        $this->heat++;

        $sql_heat = "UPDATE paintings
                 SET heat='$this->heat'
                 WHERE PaintingID='$id';";
        $res_heat = mysqli_query($conn, $sql_heat);
    }

}