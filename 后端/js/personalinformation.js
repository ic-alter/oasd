function getCookie(name){
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]);
    return null;
   }

function turn_to_login(){
    alert("请先登录");
    window.location.replace("./login.html");
}

function fetchUser(){
    $.ajax({
        url: "http://localhost:63342/PHP/get_user.php",  
        type: "POST",
        data:{
            "username":getCookie("username")
           },
        dataType: "json",
        //async: false,
        error: function(){  
            alert('网络错误');  
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
    if(reg.test(money_to_add)&&money_to_add>0){
        $.ajax({
            url: "http://localhost:63342/PHP/add_money.php",  
            type: "POST",
            data:{
                "username":getCookie("username"),
                "money":money_to_add
               },
            //dataType: "json",
            //async: false,
            error: function(){  
                alert('网络错误');  
            },  
            success: function(data,status){//如果调用php成功 
               alert(data);
               fetchUser();
               
            }  
        })
    }else{
        alert("请输入正确的金额,应当为至多四位小数的正实数！");
    }
}

function want_to_update(id){
    $.ajax({
        url: "http://localhost:63342/PHP/want_to_update.php",  
        type: "POST",
        data:{
            "PaintingID":id
           },
        //dataType: "json",
        //async: false,
        error: function(){  
            alert('网络错误');  
        },  
        success: function(data,status){//如果调用php成功 
           //alert(data);
        }  
    })
}

function want_to_delete(id){
    alert("你想要删除"+id);
}

function fetchMyUpload(){
    $.ajax({
        url: "http://localhost:63342/PHP/fetchMyUpload.php",  
        type: "POST",
        data:{
            "username":getCookie("username")
           },
        dataType: "json",
        //async: false,
        error: function(){  
            alert('网络错误');  
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
           console.log(html);
           document.getElementById("my_upload").innerHTML = html;
           
        }  
    })
}

$(document).ready(function(){
    if(getCookie("username")==null){
        turn_to_login();
    }
    fetchUser();
    fetchMyUpload();
})