<?php
include_once "User.inc";
include_once "Painting.inc";

class Order
{
    public $OrderID;
    public $PaintingID;
    public $username;
    public $OrderTime;

    public $painting;
    public $user;

    public function __construct($conn,$row){
        $this->PaintingID = $row['PaintingID'];
        $this->username = $row['username'];
        $this->OrderTime = $row['OrderTime'];

        $sql_getPainting = "select * from paintings where PaintingID='$this->PaintingID';";
        $res_getPainting = mysqli_query($conn,$sql_getPainting);
        $row_getPainting = mysqli_fetch_assoc($res_getPainting);
        $this->painting = new Painting($conn,$row_getPainting);

        $this->user = new User($conn,$this->username);

        $sql_getOrderID = "select * from orders where PaintingID='$this->PaintingID' and username='$this->username';";
        $res_getOrderID = mysqli_query($conn,$sql_getOrderID);
        $row_getOrderID = mysqli_fetch_assoc($res_getOrderID);
        if ($row_getOrderID){
            $this->OrderID = $row_getOrderID['OrderID'];
        } else{
            $this->OrderID = 0;
        }
    }

    public function save_to_DB($conn){
        $sql_insert = "insert into orders (`PaintingID`,`username`,`OrderTime`) VALUES ('$this->PaintingID','$this->username','$this->OrderTime');";
        $res_insert = mysqli_query($conn,$sql_insert);
    }
}