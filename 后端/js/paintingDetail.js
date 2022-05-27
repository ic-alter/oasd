function getQueryVariable(variable)
{
       var query = window.location.search.substring(1);
       var vars = query.split("&");
       for (var i=0;i<vars.length;i++) {
               var pair = vars[i].split("=");
               if(pair[0] == variable){return pair[1];}
       }
       return(false);
}

function getEras(YearOfWork){
    if(YearOfWork<1400){
        return 'Medieval';
    } else if(YearOfWork>=1400&&YearOfWork<1550){
        return 'Renaissance';
    } else if(YearOfWork>=1550&&YearOfWork<1700){
        return 'Post Renaissance';
    } else if(YearOfWork>=1700&&YearOfWork<1875){
        return 'Early Modern';
    } else if(YearOfWork>=1875&&YearOfWork<1945){
        return 'Modern';
    } else if(YearOfWork>=1945){
        return 'Contemporary';
    } else return '暂无数据';
}

function getInformation(data){
    var obj=document.getElementById("title");
    obj.innerHTML = data.title;
    var obj=document.getElementById("artist");
    obj.innerHTML = data.artist==null?"暂无作者信息":data.artist;
    let img_path = '../painting_imgs/'+data.img_path;
    document.getElementById('painting_img').src = img_path;
    //alert(img_path);
    var obj=document.getElementById("cost");
    obj.innerHTML = data.cost;
    var obj=document.getElementById("PaintingID");
    obj.innerHTML = data.id;
    var obj=document.getElementById("YearOfWork");
    obj.innerHTML=data.YearOfWork;
    var obj=document.getElementById("eras");
    obj.innerHTML=getEras(data.YearOfWork);
    var obj=document.getElementById("genre");
    obj.innerHTML=data.genre==null?"暂无流派信息":data.genre;
    var obj=document.getElementById("height");
    obj.innerHTML=data.height;
    var obj=document.getElementById("width");
    obj.innerHTML=data.width;
    var obj=document.getElementById("description");
    obj.innerHTML=data.description==null?"暂无数据":data.description;
    var obj=document.getElementById("upload_time");
    obj.innerHTML=data.upload_time==null?"无":data.upload_time;
    var obj=document.getElementById("uploader");
    obj.innerHTML=data.uploader==null?"非用户上传":data.uploader;
    var obj=document.getElementById("heat");
    obj.innerHTML=data.heat;
    var obj=document.getElementById("is_sold");
    obj.innerHTML=data.is_sold==0?"否":"是";
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

function getCookie(name){
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]);
    return null;
   }

function turn_to_login(){
    window.location.replace("./login.html");
}

function add_to_shoppingCart(){
    if(getCookie("username")==null){
        alert("要登录才能把艺术品加入购物车呢");
        turn_to_login();
    } else{
        $.ajax({
            url: "../PHP/add_to_shoppingCart.php",  
            type: "POST",
            data:{
                "PaintingID":getQueryVariable("id"),
                "username":getCookie("username"),
                "EnteringTime":jsDateFormatter(new Date())
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
               //getInformation(data);
               //$('.con').html("用户名:"+data[0]+"密码:"+data[1]);
            }
       
        })
    }
}

$(document).ready(function(){
        //alert(getQueryVariable("id"));
        let id = getQueryVariable("id");
		$.ajax({
			 url: "../PHP/painting_detail.php",  
			 type: "GET",
			 data:{
				 "id":id,
                 "source":"paintingDetail",
				},
			 dataType: "json",
			 //async: false,
			 error: function(){  
				 alert('emmm  好像断网了呢(´д｀)……');  
				 alert(data);
			 },  
			 success: function(data,status){//如果调用php成功 
				//alert(status);
				//alert(data.title);
                getInformation(data);
				//$('.con').html("用户名:"+data[0]+"密码:"+data[1]);
			 }
		
	})
})