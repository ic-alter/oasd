var now_mizuki = 0;

function change_mizuki(){
    var mizuki_photo = new Array();
    mizuki_photo[0] = '../imgs/98227205_p0.png';
    mizuki_photo[1] = '../imgs/change1.png';
    mizuki_photo[2] = '../imgs/change2.png';
    mizuki_photo[3] = '../imgs/change3.png';
    mizuki_photo[4] = '../imgs/change4.png';
    if(now_mizuki>=4){
        now_mizuki =0;
    } else{
        now_mizuki++;
    }
    document.getElementById("mizuki_kawaii").src = mizuki_photo[now_mizuki];
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
    for(var i in data){
        var obj = document.getElementsByClassName("hot_inf_img");
        let img_path = '../painting_imgs/'+data[i].img_path;
        obj[i].src = img_path;
        var obj = document.getElementsByClassName("hot_inf_title");
        obj[i].innerHTML = data[i].title;
        var obj = document.getElementsByClassName("hot_inf_id");
        obj[i].innerHTML = data[i].id;
        var obj = document.getElementsByClassName("hot_inf_artist");
        obj[i].innerHTML = data[i].artist;
        var obj = document.getElementsByClassName("hot_inf_cost");
        obj[i].innerHTML = data[i].cost;
        var obj = document.getElementsByClassName("hot_inf_heat");
        obj[i].innerHTML = data[i].heat;

    }
}

function getInformation_new(data){
    for(var i in data){
        var obj = document.getElementsByClassName("new_inf_img");
        let img_path = '../painting_imgs/'+data[i].img_path;
        obj[i].src = img_path;
        var obj = document.getElementsByClassName("new_inf_title");
        obj[i].innerHTML = data[i].title;
        var obj = document.getElementsByClassName("new_inf_id");
        obj[i].innerHTML = data[i].id;
        var obj = document.getElementsByClassName("new_inf_artist");
        obj[i].innerHTML = data[i].artist;
        var obj = document.getElementsByClassName("new_inf_cost");
        obj[i].innerHTML = data[i].cost;
        var obj = document.getElementsByClassName("new_inf_heat");
        obj[i].innerHTML = data[i].heat;

    }
}

function turn_to_detail(i){
    var obj = document.getElementsByClassName("hot_inf_id");
    //alert(obj[i].innerHTML);
    window.location.href = "./paintingDetail.html?id="+obj[i].innerHTML;
}

function turn_to_detail_new(i){
    var obj = document.getElementsByClassName("new_inf_id");
    //alert(obj[i].innerHTML);
    window.location.href = "./paintingDetail.html?id="+obj[i].innerHTML;
}

function clk(){
    window.setInterval(function(){
    var mizuki_photo = new Array();
    mizuki_photo[0] = '../imgs/98227205_p0.png';
    mizuki_photo[1] = '../imgs/change1.png';
    mizuki_photo[2] = '../imgs/change2.png';
    mizuki_photo[3] = '../imgs/change3.png';
    mizuki_photo[4] = '../imgs/change4.png';
    if(now_mizuki>=4){
        now_mizuki =0;
    } else{
        now_mizuki++;
    }
    document.getElementById("mizuki_kawaii").src = mizuki_photo[now_mizuki];
    }, 5000);
}

$(document).ready(function(){
    clk();
		$.ajax({
			 url: "http://localhost:63342/PHP/three_hot.php",  
			 type: "GET",
			 /*data:{
				 "id":id
				},*/
			 dataType: "json",
			 //async: false,
			 error: function(){  
				 alert('网络错误');  
				 alert(data);
			 },  
			 success: function(data,status){//如果调用php成功 
				//alert(status);
				//alert(data);
                getInformation(data);
				//$('.con').html("用户名:"+data[0]+"密码:"+data[1]);
			 }
		
	})
    $.ajax({
        url: "http://localhost:63342/PHP/three_new.php",  
        type: "GET",
        /*data:{
            "id":id
           },*/
        dataType: "json",
        //async: false,
        error: function(){  
            alert('网络错误');  
            alert(data);
        },  
        success: function(data,status){//如果调用php成功 
           //alert(status);
           //alert(data);
           getInformation_new(data);
           //$('.con').html("用户名:"+data[0]+"密码:"+data[1]);
        }
   
})
})