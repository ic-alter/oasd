let shoppingCart_num = 0;
let total_cost = 0;
let can_buy =1;

function getCookie(name){
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]);
    return null;
   }

   function turn_to_login(){
    window.location.replace("./login.html");
    alert("不登录的话就算直接输网址也是进不来的罒ω罒");
}

function jsDateFormatter( dateInput ) {  // dateInput 是一个 js 的 Date 对象
    var year = dateInput.getFullYear();
    var month = dateInput.getMonth() + 1;
    var theDate = dateInput.getDate();
    var hour = dateInput.getHours();
    var minute = dateInput.getMinutes();
    var second = dateInput.getSeconds();
    if ( month < 10 ) {
        month = '0' + month;
    }
    if ( theDate < 10 ) {
        theDate = '0' + theDate;
    }
    if ( hour < 10 ) {
        hour = '0' + hour;
    }
    if ( minute < 10 ) {
        minute = '0' + minute;
    }
    if ( second < 10 ) {
        second = '0' + second;
    }
    return year +"-"+ month +"-" + theDate + " "+ hour +":"+ minute +":"+ second;
}


function make_order(){
    if(shoppingCart_num==0){
        alert("购物车还没有艺术品呢(〃'▽'〃)");
    } else if(!can_buy){
        alert("有的艺术品已经被人抢先买下了呢……虽然很可惜, 但还是删掉吧T^T");
    } else{
        var flag = confirm("确认下单吗？(づ｡◕ᴗᴗ◕｡)づ");
        if(flag){
            $.ajax({
                url: "../PHP/make_order.php",  
                type: "POST",
                data:{
                    "total_cost":total_cost,
                    "username":getCookie("username"),
                    "time":jsDateFormatter(new Date())
                   },
                //dataType: "json",
                //async: false,
                error: function(){  
                    alert('emmm  好像断网了呢(´д｀)……');  
                    //alert(data);
                },  
                success: function(data,status){//如果调用php成功 
                   //alert(status);
                   alert(data);
                   fetchShoppingCart();
                   //getInformation(data);
                }
            })
        } else{
        }
    }
}

function delete_shoppingCart(PaintingID){
    var flag = confirm("真的要删除吗?(ｉДｉ)");
    if(flag){
        $.ajax({
            url: "../PHP/delete_shoppingCart.php",  
            type: "POST",
            data:{
                "PaintingID":PaintingID,
                "username":getCookie("username"),
                "EnteringTime":"无用无用无用"
               },
            //dataType: "json",
            //async: false,
            error: function(){  
                alert('emmm  好像断网了呢(´д｀)……');  
                //alert(data);
            },  
            success: function(data,status){//如果调用php成功 
               //alert(status);
               alert(data);
               fetchShoppingCart();
               //getInformation(data);
               //$('.con').html("用户名:"+data[0]+"密码:"+data[1]);
            }
       
        })
    }else{
        alert("说要删除又不删, 烦内￣へ￣");
    }
}

function getInformation(data){
    shoppingCart_num=data.length;
    var obj = document.getElementById("painting_num");
    obj.innerHTML = shoppingCart_num;
    var html = "";
    if(shoppingCart_num==0){
        html+=`<h3>暂无艺术品在购物车内</h3>`;
    } else {
        for(let i = 0 ;i<shoppingCart_num;i++){
            html+=`<div class="commodit">
            <div class="com">
                <div>
                    <img src="`+"../painting_imgs/"+ data[i].Painting.img_path +`" class="comImg">
                </div>
                <div class="commodityInformation">
                    <div class="comIn text2">`+ data[i].Painting.title +`</div>
                    <div class="comIn text2">`+ (data[i].Painting.artist==null?"暂无作者信息":data[i].Painting.artist) +`</div>
                    <div class="comIn text2">出售者:<span>`+ (data[i].Painting.uploader==null?"官方自营":data[i].Painting.uploader) +`</span></div>
                </div>
                <div class="cusSel">
                    <div class="text2">`+ (data[i].Painting.description==null?"暂无介绍":data[i].Painting.description.substr(0,90)) +`</em></div>
                </div>
                <div style="width: 100px; height: inherit;"></div>
                <div class="prices text2"><b>`+ data[i].Painting.cost +`万美元</b></div>
                <div class="delAtt">
                    <div class="del text2" onclick="delete_shoppingCart(`+data[i].PaintingID+`)">删除</div>`;
            if(data[i].Painting.is_sold != 0){
                html+=`<div class="shift text2">商品已被他人购买</div>`;
                can_buy = 0;
            }
            if(data[i].Painting.update_time>data[i].EnteringTime){
                html+=`<div class="shift text2">商品信息发生变动</div>`;
            }
            html+=`</div></div></div>`;
            total_cost+= parseFloat(data[i].Painting.cost);
        }
    }
    console.log(html);
    document.getElementById("commodity-box").innerHTML = html;
    document.getElementById("total_cost").innerHTML= total_cost;

}

function fetchShoppingCart(){
    shoppingCart_num = 0;
    total_cost = 0;
    can_buy =1;
    $.ajax({
        url: "../PHP/check_shoppingCart.php",  
        type: "POST",
        data:{
            "username":getCookie("username"),
           },
        dataType: "json",
        //async: false,
        error: function(){  
            alert('emmm  好像断网了呢(´д｀)……');  
            //alert(data);
        },  
        success: function(data,status){//如果调用php成功 
           //console.log(data);
           getInformation(data);     
        }
   })
}







$(document).ready(function(){
    if(getCookie("username")==null){
        turn_to_login();
    }
    //alert("114514");
    fetchShoppingCart();
})