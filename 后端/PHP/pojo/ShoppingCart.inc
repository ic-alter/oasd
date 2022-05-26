<?php

include_once "Painting.inc";

class ShoppingCart
{
    public $PaintingID;
    public $username;
    public $EnteringTime;

    public $Painting;
    //public $is_sold;

    public function __construct($conn,$row){
        $this->PaintingID = $row['PaintingID'];
        $this->username = $row['username'];
        $this->EnteringTime = $row['EnteringTime'];

        $sql_getPainting = "select * from paintings where PaintingID='$this->PaintingID';";
        $res_getPainting = mysqli_query($conn,$sql_getPainting);
        $row_getPainting = mysqli_fetch_assoc($res_getPainting);
        $this->Painting = new Painting($conn,$row_getPainting);

    }

    public function save_to_DB($conn): string
    {
        $sql_exist = "select * from shoppingcart where PaintingID='$this->PaintingID' and username='$this->username';";
        $res_exist = mysqli_query($conn,$sql_exist);
        $row_exist = mysqli_fetch_assoc($res_exist);
        if($row_exist){
            return "已经在购物车里了，笨蛋！ヽ(#`Д´)ﾉ";
        }
        if($this->Painting->is_sold !=0){
            return "可惜，已经被卖掉了……下次一定！(╯︵╰)";
        }
        $sql_save = "insert into shoppingcart (`PaintingID`,`username`,`EnteringTime`) VALUES ('$this->PaintingID','$this->username','$this->EnteringTime');";
        $res_save = mysqli_query($conn,$sql_save);
        if ($res_save){
            return "加入购物车了哟~";
        } else{
            return "好像网络出错了……";
        }
    }

    public function delete_from_DB($conn): string
    {
        $sql_delete = "DELETE FROM shoppingcart WHERE PaintingID='$this->PaintingID' and username='$this->username';";
        $res_delete = mysqli_query($conn,$sql_delete);
        return "删除了哟~";
    }
}