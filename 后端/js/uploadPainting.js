let is_update = false;
let PaintingID = 0;

function changepic() {
    var reads = new FileReader();
    f = document.getElementById('true_upload_img').files[0];
    reads.readAsDataURL(f);
    reads.onload = function(e) {
    document.getElementById('view_upload_img').src = this.result;
    //$("#img3").css("display", "block");
    };
   }

   function setCookie(cname,cvalue,exdays){
    var d = new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    alert(cname+" "+ cvalue);
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

function cannot_change_img(){
    alert("修改艺术品信息时不得更改图片和标题(都换了图片了还能算同一件艺术品吗……可爱的mizuki建议您这边新上传一个呢,或者去楼下酒吧点个炒饭)");
}

function getInformation(data){
    document.getElementById("view_upload_img").src = '../painting_imgs/'+data.img_path;
    document.getElementById("upload_img").setAttribute("onclick","cannot_change_img()");
    document.getElementById("title").value = data.title;
    document.getElementById("title").setAttribute("readOnly",true);
    document.getElementById("FirstName").value = data.FirstName;
    document.getElementById("LastName").value = data.LastName;
    document.getElementById("description").value = data.description;
    document.getElementById("YearOfWork").value = data.YearOfWork;
    document.getElementById("genre").value = data.genre;
    document.getElementById("height").value = data.height;
    document.getElementById("width").value = data.width;
    document.getElementById("cost").value = data.cost;
}   

function check_if_update_and_fetch(){
    if(getCookie("update")!=null){
        is_update=true;
        PaintingID = getCookie("update");
        //alert("is_update = "+is_update+" ,PaintingID="+PaintingID);
        delCookie("update");
        $.ajax({
            url: "http://localhost:63342/PHP/painting_detail.php",  
            type: "GET",
            data:{
                "id":PaintingID,
                "source":"uploadPainting"
               },
            dataType: "json",
            //async: false,
            error: function(){  
                alert('网络错误');  
                alert(data);
            },  
            success: function(data,status){//如果调用php成功 
               //alert(status);
               //alert(data.title);
               getInformation(data);
            }   
        })
    }
}

function mean(t, flag, intext) {
	let va = t.value;
	if(flag) {
		t.nextElementSibling.innerHTML = '√'
		t.nextElementSibling.style.color = 'green'
		return true;
	} else {
		if(va == '') {
			t.nextElementSibling.innerHTML = `*&nbsp;不能为空`;
		} else if(intext) {
			t.nextElementSibling.innerHTML = intext;
		}
		t.nextElementSibling.style.color = 'red'
		return false;

	}

}

function getImgName(t){
    var animateimg = t.value; //获取上传的图片名 带//
    var imgarr=animateimg.split('\\'); //分割
    var myimg=imgarr[imgarr.length-1]; //去掉 // 获取图片名
    var houzui = myimg.lastIndexOf('.'); //获取 . 出现的位置
    var ext = myimg.substring(houzui, myimg.length).toUpperCase();
    return ext;
}

function checkText(t){
    let reg = /^[^\s]+[\s]*.+$/;
	let va = t.value;
    if(reg.test(va)){
        checkResult = true;
        return mean(t, checkResult);
    }else{
		checkResult = false;
        //let info = '格式错误,';
        let intext = `*&nbsp;长度须大于1且首字非空格`;
        return mean(t, checkResult,intext);
    }
}

function checkImg(t){
    let ext= getImgName(t);
    if(!is_update){
        if(ext =='.PNG' || ext =='.JPG' || ext =='.JPEG' || ext =='.png' || ext =='.jpg' || ext =='.jpeg'){
            t.nextElementSibling.innerHTML = '图片上传完成'
            t.nextElementSibling.style.color = 'green'
            changepic();
            return true;
        } else {
            t.nextElementSibling.innerHTML = `*&nbsp;请上传png,jpg,jpeg格式的艺术品图片`;
            t.nextElementSibling.style.color = 'red';
            return false;
        }
    } else {
        return true;
    }
    
}

function check(t) {//0
    let reg = /^[^\s]+[\s]*.+$/;
	let va = t.value;
    if(reg.test(va)){
        checkResult = true;
        return mean(t, checkResult);
    }else{
		checkResult = false;
        //let info = '格式错误,';
        let intext = `*&nbsp;长度须大于1且首字非空格`;
        return mean(t, checkResult,intext);
    }
}

function checkDate(t) {//0
	let reg = /^[1-9][0-9]{0,3}$/;
    let reg2 = /^\-[1-9][0-9]{0,3}$/;
	let va = t.value;
	if(reg.test(va)||reg2.test(va)||va=="0") {
		checkResult = true;
		return mean(t, checkResult)
	} else {
		checkResult = false;
		//let info = '格式错误,';
        let intext = `*&nbsp;请填写四位以下的合理的纯数字`;
		return mean(t, checkResult,intext)
	}
}

function checkNum(t){
    //let reg = /^[1-9][0-9]{0,}$/;
    //let reg = /^\d+(\.\d{1,4})?$/;
    let reg = /^[1-9]+\d*(\.\d{1,4})?$|^0\.\d{1,4}$/;
	let va = t.value;
	if(reg.test(va)&&va>0) {
		checkResult = true;
		return mean(t, checkResult)
	} else {
		checkResult = false;
		//let info = '格式错误,';
        let intext = `*&nbsp;请填写正数,至多四位小数`;
		return mean(t, checkResult,intext)
	}
}

function checkAll(){
    return  checkImg(document.getElementById("true_upload_img"))&&
            check(document.getElementById("title"))&&
            check(document.getElementById("FirstName"))&&
            check(document.getElementById("LastName"))&&
            checkText(document.getElementById("description"))&&
            checkDate(document.getElementById("YearOfWork"))&&
            check(document.getElementById("genre"))&&
            checkNum(document.getElementById("height"))&&
            checkNum(document.getElementById("width"))&&
            checkNum(document.getElementById("cost"));
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
    alert("请先登录");
    window.location.replace("./login.html");
}

function jump_to_detail(id){
    window.location.replace("./paintingDetail.html?id="+id);
}


$(document).ready(function(){
    if(getCookie("username")==null){
        turn_to_login();
    }
    is_update = false;
    PaintingID = 0;
    check_if_update_and_fetch();
	$("#upload_submit_button").click(function(){
		if(checkAll()){
		$.ajax({
			 url: "http://localhost:63342/PHP/upload_painting.php",  
			 type: "POST",
			 data:{
                 "type":PaintingID,
				 "img_path":getImgName(document.getElementById("true_upload_img")),
				 "title":$("#title").val(),
                 "FirstName":$("#FirstName").val(),
                 "LastName":$("#LastName").val(),
                 "description":$("#description").val(),
                 "YearOfWork":$("#YearOfWork").val(),
                 "genre":$("#genre").val(),
                 "height":$("#height").val(),
                 "width":$("#width").val(),
                 "cost":$("#cost").val(),
                 "upload_time":jsDateFormatter(new Date()),
                 "update_time":jsDateFormatter(new Date()),
                 "uploader":getCookie("username"),
                 "heat":0,
                 "is_sold":0,
				},
			 dataType: "json",
			 //async: false,
			 error: function(){  
				 alert('网络错误');  
				 alert(data);
			 },  
			 success: function(data,status){//如果调用php成功 
				//alert(status);
				//alert(data=="上传艺术品成功！");
				if(data.msg=="艺术品上传成功"){
                    let path = "../painting_imgs/"+data.fileName+getImgName(document.getElementById("true_upload_img"));
                    let f = document.getElementById('true_upload_img').files[0];
                    formData = new FormData();
                    formData.append("img",f);
                    formData.append("path",path);
                    alert(data.msg);
                    PaintingID = data.PaintingID;
                    $.ajax({
                        url:"http://localhost:63342/PHP/upload_painting_img.php",
                        type:'POST',
                        async: false,
                        data: formData,
                        dataType:'json',
                        cache: false, // 上传文件无需缓存
                        processData : false, // 使数据不做处理
                        contentType : false, // 不要设置Content-Type请求头
                        success: function(data){
                            console.log(data);
                        },
                        error:function(response){
                            console.log(response);
                        }
                    });
                    jump_to_detail(PaintingID);
				} else if(data.msg == "修改艺术品信息成功"){
                    alert(data.msg);
                    jump_to_detail(PaintingID);
                } else{
                    alert('网络错误');
                }
			 }
		});
		} else alert("输入格式错误！");
		
	})
})