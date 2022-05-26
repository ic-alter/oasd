<?php

class User{
    public $id;
    public $username;
    public $truename;
    public $phone;
    public $email;
    public $address;
    public $money;

    public function __construct($conn,$username){
        $sql_findUser = "select * from user where username='$username' LIMIT 1;";
        $res_findUser = mysqli_query($conn,$sql_findUser);
        if ($res_findUser){
            $row_findUser = mysqli_fetch_assoc($res_findUser);
            $this->id = $row_findUser['id'];
            $this->truename = $row_findUser['truename'];
            $this->username = $row_findUser['username'];
            $this->phone = $row_findUser['phone'];
            $this->email = $row_findUser['email'];
            $this->address = $row_findUser['address'];
            $this->money = $row_findUser['money'];
        }
    }

    public function add_money($conn,$moneyNum){
        $this->money += $moneyNum;
        $sql_update_money = "UPDATE user SET money='$this->money' WHERE username='$this->username';";
        $res_update_money = mysqli_query($conn,$sql_update_money);
    }
}