function getCookie(name){
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]);
    return null;
   }

   function turn_to_login(){
    window.location.replace("./login.html");
    alert("不登录的话就算直接输网址也是进不来的罒ω罒");
}

function getInformation(data){
    var size = data.length;
    var html="";
    if(size==0){
        html = `<p>暂时还没有足迹(｡･ω･｡)</p>`;
    } else{
    for(let i = 0 ;i<size;i++){
        html += `<div>
        <a href="`+"./paintingDetail.html?id="+data[i].PaintingID+`"><table class="inf_table">
            <tr>
                <td colspan="2"><img src="`+"../painting_imgs/"+data[i].painting.img_path+`" ></td>
            </tr>
            <tr>
                <td>名称</td><td>`+data[i].painting.title+`</td>
            </tr>
            <tr>
                <td>作者</td><td>`+data[i].painting.artist+`</td>
            </tr>
            <tr>
                <td>售价</td><td>`+data[i].painting.cost +`万美元</td>
            </tr>
            <tr>
                <td>简介</td><td>`;
        var description = data[i].painting.description;
        var smaller_description = description==null?"暂无数据":description.slice(0,60);
        html+=smaller_description+`</td>
            </tr>
            <tr>
                <td>上次访问时间</td><td>`+data[i].visitTime+`</td>
            </tr>
        </table></a></div>`;
    }
    }
    //console.log(html);
    document.getElementById("search_result").innerHTML=html;
}

function ajaxFetchData(){
    $.ajax({
        url: "../PHP/fetchFoot.php",  
        type: "POST",
        data:{
            "username":getCookie("username")
           },
        dataType: "json",
        //async: false,
        error: function(){  
            alert('emmm  好像断网了呢(´д｀)……');  
            //alert(data);
        },  
        success: function(data,status){//如果调用php成功 
           //alert(status);
           //alert(data.title);
           getInformation(data);
           console.log(data);
           
        }
   
   })
}

$(document).ready(function(){
    if(getCookie("username")==null){
        turn_to_login();
    }
    ajaxFetchData();
})