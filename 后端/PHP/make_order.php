<?php

header("Access-Control-Allow-Origin:*");
$conn = null;
include 'base.php';
include_once 'pojo/Order.inc';
include_once 'pojo/User.inc';
include_once "pojo/ShoppingCart.inc";

$total_cost = $_POST['total_cost'];
$username = $_POST['username'];
$time = $_POST['time'];
$jie_hu = false;

/*先让冤大头把钱花出去*/
$me = new User($conn,$username);
if ($me->money<$total_cost){
    echo "好像钱不够了~~o(>_<)o ~~\n阿诺内，再氪一单吧ლ(｀∀´ლ)";
} else{
    /*然后逐条把购物车转化为订单,同时给卖家加钱*/
    $sql_getAll_cart = "select * from shoppingcart WHERE username='$username';";
    $res_getAll_Cart = mysqli_query($conn,$sql_getAll_cart);
    $size = mysqli_num_rows($res_getAll_Cart);
    for ($i=0;$i<$size;$i++){
        $row = mysqli_fetch_assoc($res_getAll_Cart);
        $shoppingCart = new ShoppingCart($conn,$row);
        if ($shoppingCart->Painting->is_sold!=0){//假如结算到一半发现商品被人买了
            $jie_hu = true;
            continue;
        }
        $shoppingCart->delete_from_DB($conn);
        $row_order['PaintingID'] = $row['PaintingID'];
        $row_order['username'] = $row['username'];
        $row_order['OrderTime'] = $time;
        $order = new Order($conn,$row_order);
        $me->waste_money($conn,$order->painting->cost);
        $order->save_to_DB($conn);
        if ($order->painting->uploader!=null){
            $trader = new User($conn,$order->painting->uploader);
            $trader->add_money($conn,$order->painting->cost);
        }
        $order->painting->sell($conn);
    }
    if ($jie_hu){
        echo "有些商品在结算过程中被人抢先买到了……不过mizuki还是尽可能把能结算的都结算了哟(╯﹏╰）";
    } else{
        echo "结算成功，老板大气！ヽ(ﾟ∀ﾟ)ﾒ(ﾟ∀ﾟ)ﾉ ";
    }
}
