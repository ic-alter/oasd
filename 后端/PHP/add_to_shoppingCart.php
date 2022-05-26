<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';
include 'pojo/ShoppingCart.inc';

$shoppingCart = new ShoppingCart($conn,$_POST);
$result = $shoppingCart->save_to_DB($conn);
echo $result;
