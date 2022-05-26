function mean(t, flag, info, intext) {
	let va = t.value;
	if(flag) {
		t.nextElementSibling.innerHTML = '√'
		t.nextElementSibling.style.color = 'green'
		return true;
	} else {
		if(va == '') {
			t.nextElementSibling.innerHTML = `*&nbsp;${info}不能为空`;
		} else if(intext) {
			t.nextElementSibling.innerHTML = intext;
		}
		t.nextElementSibling.style.color = 'red'
		return false;

	}

}

function checkUsername(t) {//0
	let reg = /^([\u4e00-\u9fa5]|\w){1,16}$/;
    let reg2 = /^\w+@[a-zA-Z0-9]{2,}(?:\.[a-z]{2,}){1,3}$/;
	let va = t.value;
	if(reg.test(va)||reg2.test(va)) {
		username1 = true;
		return mean(t, username1)
	} else {
		username1 = false;
		let info = '账号';
        let intext = '*&nbsp;应为长度不超过16的汉字字母和下划线的组合或邮箱';
		return mean(t, username1, info,intext)
	}
}

function checkPassword(t) {//3
	let reg = /^.*(?=.{6,})(?=.*[A-Za-z!@#$%^&*?]|\d).*$/;
	let va = t.value;
	if(reg.test(va)) {
		p1 = true;
		return mean(t, p1)
	} else {
		p1 = false;
        let intext = '*&nbsp;应是至少六位的数字字母符号的组合'
		let info = '密码';
		return mean(t, p1, info,intext)
	}
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

function checkAll(){
	return checkUsername(document.getElementById("username"))&&
		   checkPassword(document.getElementById("password"));
}

function jump_to_home(){
	window.location.replace("./home.html");
}

function turn_to_home(){
	alert("您已经登录了");
	window.location.replace("./home.html");
}

$(document).ready(function(){
	if(getCookie("username")!=null){
		turn_to_home();
	}
	$("#registerAndLogin_button").click(function(){
		if(checkAll()){
		var username = $("#username").val();
		var password = $("#password").val();
		$.ajax({
			 url: "http://localhost:63342/PHP/login.php",  
			 type: "POST",
			 data:{
				 "username":$("#username").val(),
				 "password":$("#password").val(),
				},
			 //dataType: "json",
			 //async: false,
			 error: function(){  
				 alert('emmm  好像断网了呢(´д｀)……');  
				 //alert(data);
			 },  
			 success: function(data,status){//如果调用php成功 
				//alert(status);
				alert(data.msg);
				//alert(data=="登录成功");
				if(data.msg=="登录成功"){
					setCookie("username",data.username,1);
					jump_to_home();
					//var x = document.cookie;
					//alert("此即为"+document.cookie);
				}
			 }
		});
		} else alert("输入格式错误！");
		
	})
})