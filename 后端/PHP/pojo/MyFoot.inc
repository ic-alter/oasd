<?php

include_once "Painting.inc";

class MyFoot
{
    public $FootID;
    public $PaintingID;
    public $username;
    public $visitTime;

    public $painting;

    public function __construct($conn,$row){
        $this->PaintingID = $row["PaintingID"];
        $this->username = $row['username'];
        $this->visitTime = $row['visitTime'];
        $sql_getPainting = "select * from paintings where PaintingID='$this->PaintingID';";
        $res_getPainting = mysqli_query($conn,$sql_getPainting);
        $row_getPainting = mysqli_fetch_assoc($res_getPainting);
        $this->painting = new Painting($conn,$row_getPainting);
    }

    public function save_or_update($conn){
        $sql_isExist = "select * from myfoot where PaintingID='$this->PaintingID' and username='$this->username';";
        $res_isExist = mysqli_query($conn,$sql_isExist);
        $row = mysqli_fetch_assoc($res_isExist);
        if($row){
            $sql_add_or_update = "UPDATE myfoot SET visitTime='$this->visitTime' where PaintingID='$this->PaintingID' and username='$this->username';";
        }else{
            $sql_add_or_update = "insert into myfoot  (`username`,`PaintingID`,`visitTime`) VALUES ('$this->username','$this->PaintingID','$this->visitTime');";
        }
        $res_add_or_update = mysqli_query($conn,$sql_add_or_update);
    }

}