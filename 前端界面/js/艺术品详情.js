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
    obj.innerHTML = data.artist;
    let img_path = '../painting_imgs/'+data.img_path+'.jpg'
    document.getElementById('painting_img').src = img_path;
    alert(img_path);
    var obj=document.getElementById("cost");
    obj.innerHTML = data.cost;
    var obj=document.getElementById("YearOfWork");
    obj.innerHTML=data.YearOfWork;
    var obj=document.getElementById("eras");
    obj.innerHTML=getEras(data.YearOfWork);
    var obj=document.getElementById("genre");
    obj.innerHTML=data.genre;
    var obj=document.getElementById("height");
    obj.innerHTML=data.height;
    var obj=document.getElementById("width");
    obj.innerHTML=data.width;
}

$(document).ready(function(){
        //alert(getQueryVariable("id"));
        let id = getQueryVariable("id");
		$.ajax({
			 url: "http://localhost:63342/painting_detail.php",  
			 type: "GET",
			 data:{
				 "id":id
				},
			 dataType: "json",
			 //async: false,
			 error: function(){  
				 alert('error');  
				 alert(data);
			 },  
			 success: function(data,status){//如果调用php成功 
				alert(status);
				alert(data.title);
                getInformation(data);
				//$('.con').html("用户名:"+data[0]+"密码:"+data[1]);
			 }
		
	})
})