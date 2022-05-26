<?php

class Painting_saveToDB{
    public $title;
    public $FirstName;
    public $LastName;
    public $img_path;
    public $YearOfWork;
    public $cost;
    public $genre;
    public $height;
    public $width;
    public $description;
    public $upload_time;
    public $update_time;
    public $uploader;
    public $heat;
    public $is_sold;

    public $PaintingID;
    public $ArtistID;
    public $GenreID;
    public $FileID;

    public function __construct($row){
        $this->title = $row['title'];
        $this->FirstName = $row['FirstName'];
        $this->LastName = $row['LastName'];
        $this->img_path = $row['img_path'];
        $this->YearOfWork = $row['YearOfWork'];
        $this->cost = $row['cost'];
        $this->genre = $row['genre'];
        $this->height = $row['height'];
        $this->width = $row['width'];
        $this->description = $row['description'];
        $this->upload_time = $row['upload_time'];
        $this->update_time = $row['update_time'];
        $this->uploader = $row['uploader'];
        $this->heat = $row['heat'];
        $this->is_sold = $row['is_sold'];
    }

    private function  if_have_same_title($conn): bool
    {
        /*判断是否有同名作品*/
        $sql_find_same_name = "select Title from paintings where Title='$this->title';";
        $res_find_same_name = mysqli_query($conn,$sql_find_same_name);
        $row_find_same_name = mysqli_fetch_assoc($res_find_same_name);
        if ($row_find_same_name){
            return true;
        } else{
            return false;
        }
    }

    private function get_or_create_ArtistID($conn){
        /*读取作者id或获取新id*/
        $sql_ArtistID_get = "select * from artists where FirstName='$this->FirstName' and LastName='$this->LastName';";
        $sql_ArtistID_insert = "insert into artists (`FirstName`,`LastName`) VALUES('$this->FirstName','$this->LastName');";
        $res_ArtistID_get = mysqli_query($conn, $sql_ArtistID_get);
        $row_ArtistID_get = mysqli_fetch_assoc($res_ArtistID_get);
        if($row_ArtistID_get){
            $this->ArtistID = $row_ArtistID_get['ArtistID'];
        } else {
            $res_ArtistID_insert = mysqli_query($conn, $sql_ArtistID_insert);
            $res_ArtistID_get2 = mysqli_query($conn, $sql_ArtistID_get);
            $row_ArtistID_get2 = mysqli_fetch_assoc($res_ArtistID_get2);
            $this->ArtistID = $row_ArtistID_get2['ArtistID'];
        }
    }

    private function get_or_create_GenreID($conn){
        /*读取流派id或获取新id*/
        $sql_GenreID_get = "select * from genres where GenreName='$this->genre';";
        $sql_GenreID_insert = "insert into genres (`GenreName`) VALUES('$this->genre');";
        $res_GenreID_get = mysqli_query($conn, $sql_GenreID_get);
        $row_GenreID_get = mysqli_fetch_assoc($res_GenreID_get);
        if($row_GenreID_get){
            $this->GenreID = $row_GenreID_get['GenreID'];
        } else {
            $res_GenreID_insert = mysqli_query($conn, $sql_GenreID_insert);
            $res_GenreID_get2 = mysqli_query($conn, $sql_GenreID_get);
            $row_GenreID_get2 = mysqli_fetch_assoc($res_GenreID_get2);
            $this->GenreID = $row_GenreID_get2['GenreID'];
        }
    }

    public function save_to_DB($conn): string
    {

        /*判断是否有同名作品*/
        if ($this->if_have_same_title($conn)){
            return "已有同名作品";
        }

        $this->get_or_create_ArtistID($conn);
        $this->get_or_create_GenreID($conn);
        /*写paintings表*/
        $sql_insert_painting = "insert into paintings 
        (`ArtistID`,`ImageFileName`,`Title`,`YearOfWork`,`Cost`,`Height`,`Width`,`Description`,`upload_time`,`update_time`,`uploader`,`heat`,`is_sold`) VALUES
        ('$this->ArtistID','$this->img_path','$this->title','$this->YearOfWork','$this->cost','$this->height','$this->width','$this->description','$this->upload_time','$this->update_time','$this->uploader','$this->heat','$this->is_sold');";
        $res_insert_painting = mysqli_query($conn,$sql_insert_painting);
        /*获取id*/
        $sql_get_PaintingID = "select * from paintings where Title='$this->title';";
        $res_get_PaintingID = mysqli_query($conn,$sql_get_PaintingID);
        $row_get_PaintingID = mysqli_fetch_assoc($res_get_PaintingID);
        $this->PaintingID = $row_get_PaintingID['PaintingID'];
        /*写paintinggenres表*/
        $sql_insert_painting_genres = "insert into paintinggenres (`PaintingID`,`GenreID`) VALUES('$this->PaintingID','$this->GenreID');";
        $res_insert_painting_genres = mysqli_query($conn,$sql_insert_painting_genres);
        /*文件名处理*/
        $this->FileID = $this->PaintingID+24000;
        $fileName = strval($this->FileID).$this->img_path;
        $sql_update_file = "UPDATE paintings SET ImageFileName='$fileName' WHERE PaintingID='$this->PaintingID';";
        $res_update_file = mysqli_query($conn,$sql_update_file);
        return "艺术品上传成功";
    }
    public function update_to_DB($conn,$PaintingID): string
    {

        $this->get_or_create_ArtistID($conn);
        $this->get_or_create_GenreID($conn);
        /*写paintings表*/
        $sql_update_painting = "UPDATE paintings SET
        ArtistID='$this->ArtistID',YearOfWork='$this->YearOfWork',Cost='$this->cost',Height='$this->height',Width='$this->width',Description='$this->description',
        update_time='$this->update_time',uploader='$this->uploader' WHERE PaintingID='$PaintingID';";
        $res_update_painting = mysqli_query($conn,$sql_update_painting);

        $this->PaintingID = $PaintingID;

        /*写paintinggenres表*/
        $sql_update_painting_genres = "UPDATE paintinggenres SET GenreID='$this->GenreID' WHERE PaintingID='$PaintingID';";
        $res_update_painting_genres = mysqli_query($conn,$sql_update_painting_genres);
        return "修改艺术品信息成功";
    }
}