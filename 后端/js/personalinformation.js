function getCookie(name){
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]);
    return null;
   }

function turn_to_login(){
    window.location.replace("./login.html");
    alert("不登录的话就算直接输网址也是进不来的罒ω罒");
}

function fetchUser(){
    $.ajax({
        url: "../PHP/get_user.php",  
        type: "POST",
        data:{
            "username":getCookie("username")
           },
        dataType: "json",
        //async: false,
        error: function(){  
            alert('emmm  好像断网了呢(´д｀)……');  
        },  
        success: function(data,status){//如果调用php成功 
           //alert(status);
           //alert(data);
           document.getElementById("personal_username").innerHTML=data.username;
           document.getElementById("personal_phone").innerHTML=data.phone;
           document.getElementById("personal_email").innerHTML=data.email;
           document.getElementById("personal_address").innerHTML=data.address;
           document.getElementById("personal_money").innerHTML=data.money+"万美元";
           
        }  
    })
}

function add_money(){
    var money_to_add = prompt("请输入充值的金额(单位:万美元)");
    let reg = /^[1-9]+\d*(\.\d{1,4})?$|^0\.\d{1,4}$/;
    if(reg.test(money_to_add)&&money_to_add>0&&money_to_add<1000000){
        $.ajax({
            url: "../PHP/add_money.php",  
            type: "POST",
            data:{
                "username":getCookie("username"),
                "money":money_to_add
               },
            //dataType: "json",
            //async: false,
            error: function(){  
                alert('emmm  好像断网了呢(´д｀)……');  
            },  
            success: function(data,status){//如果调用php成功 
               alert(data);
               fetchUser();
               
            }  
        })
    }else{
        alert("整数至多六位,小数至多四位,如果嫌六位太少可以直接把剩下的钱打给mizuki(*•ω•)");
    }
}

function setCookie(cname,cvalue,exdays){
    var d = new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    //alert(cname+" "+ cvalue);
    document.cookie = cname + "=" + cvalue + "; " + expires + ";path=/html/";
  }
  function getCookie(name){
      var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
      if(arr != null) return unescape(arr[2]);
      return null;
     }
  function delCookie(name) {
    setCookie(name,getCookie(name),-1);
  }

function want_to_update(id){
    setCookie("update",id,0.001);
}

function want_to_delete(id){
    var flag = confirm("确认要删除吗?删掉可就再也不能恢复了(╯︵╰)");
    if(flag){
        $.ajax({
            url: "../PHP/delete_painting.php",  
            type: "POST",
            data:{
                "username":getCookie("username"),
                "PaintingID":id
               },
            //dataType: "json",
            //async: false,
            error: function(){  
                alert('emmm  好像断网了呢(´д｀)……');  
            },  
            success: function(data,status){//如果调用php成功 
               alert(data);
               fetchMyUpload();  
            }  
        })
    } else{
        alert("刚想把这个艺术品吃掉的说￣へ￣，不删就不删罢");
    }
}

function fetchMyUpload(){
    $.ajax({
        url: "../PHP/fetchMyUpload.php",  
        type: "POST",
        data:{
            "username":getCookie("username")
           },
        dataType: "json",
        //async: false,
        error: function(){  
            alert('emmm  好像断网了呢(´д｀)……');  
        },  
        success: function(data,status){//如果调用php成功 
           //alert(status);
           //alert(data);
           let size = data.length;
           var html = `<table border="1">
           <tr>
               <th>艺术品名称</th>
               <th>发布日期</th>
               <th>操作</th>
           </tr>`;
           if(size==0){
               html += `<tr><td colspan="3">暂无数据</td></tr>`;
           } else{
                for(let i = 0 ;i<size;i++){
                    html+=`<tr>
                    <td>`+ data[i].title +`</td>
                    <td>`+ data[i].upload_time +`</td>
                    <td class="update_delete">
                        <a onclick="want_to_update(`+data[i].id +`)" href="`+ "./uploadPainting.html" +`">修改</a>
                        <a onclick="want_to_delete(`+data[i].id +`)" href="">删除</a>
                    </td>
                </tr>`;
                }
           }
           html+=`</table>`;
           //console.log(html);
           document.getElementById("my_upload").innerHTML = html;
           
        }  
    })
}

function fetchMyOrder(){
    $.ajax({
        url: "../PHP/fetchMyOrder.php",  
        type: "POST",
        data:{
            "username":getCookie("username")
           },
        dataType: "json",
        //async: false,
        error: function(){  
            alert('emmm  好像断网了呢(´д｀)……');  
        },  
        success: function(data,status){//如果调用php成功 
           //console.log(data);
            var html = `<tr>
                <th>订单号</th>
                <th>作品名称</th>
                <th>订单时间</th>
                <th>金额</th>                                                 
            </tr>`;
            let size = data.length;
            if(size==0){
                html+=`<tr><td colspan="4">暂无数据</td></tr>`;
            } else{
                for(let i = 0 ;i<size;i++){
                    html+=`<tr>
                        <td>`+ data[i].OrderID +`</td>
                        <td>`+ data[i].painting.title +`</td>
                        <td>`+ data[i].OrderTime +`</td>
                        <td>`+ data[i].painting.cost +`</td>
                    </tr>`;
                }
            }
            document.getElementById("my_order").innerHTML=html;
        }  
    })
}

function fetchMySell(){
    $.ajax({
        url: "../PHP/fetchMySell.php",  
        type: "POST",
        data:{
            "username":getCookie("username")
           },
        dataType: "json",
        //async: false,
        error: function(){  
            alert('emmm  好像断网了呢(´д｀)……');  
        },  
        success: function(data,status){//如果调用php成功 
           console.log(data);
            var html = `<tr>
                <th>艺术品信息</th>
                <th>卖出时间</th>
                <th>买家信息</th>
                <th>买家地址</th>
            </tr>`;
            let size = data.length;
            if(size==0){
                html+=`<tr><td colspan="4">暂无数据</td></tr>`;
            } else{
                for(let i = 0 ;i<size;i++){
                    html+=`<tr>
                    <td>`+ data[i].painting.title +`<br>`+ data[i].painting.cost +`万美元</td>
                    <td>`+ data[i].OrderTime +`</td>
                    <td>账号:`+ data[i].user.username +`<br>电话:`+ data[i].user.phone +`<br>邮箱:`+ data[i].user.email +`</td>
                    <td>`+ data[i].user.address +`</td>
                </tr>`;
                }
            }
            document.getElementById("my_sell").innerHTML=html;
        }  
    })
}

$(document).ready(function(){
    if(getCookie("username")==null){
        turn_to_login();
    }
    fetchUser();
    fetchMyUpload();
    fetchMyOrder();
    fetchMySell();
})