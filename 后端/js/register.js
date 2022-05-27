let inputs = document.querySelectorAll('input');
let username1=false,truename1=false,gender=false,p1=false,p2=false,phone1=false,ema=false,address=false;

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
	let va = t.value;
	if(reg.test(va)) {
		username1 = true;
		return mean(t, username1)
	} else {
		username1 = false;
		let info = '账号';
        let intext = '*&nbsp;应为汉字字母和下划线的组合,长度不超过16';
		return mean(t, username1, info,intext)
	}
}

function checkTruename(t){//1
    let reg = /^([\u4e00-\u9fa5]|\w){1,16}$/;
    let va = t.value;
    if(reg.test(va)){
        truename1 = true;
        return  mean(t,truename1)
    } else {
        truename1 = false;
        let info = '真实姓名';
        let intext = '*&nbsp;应为汉字字母和下划线的组合,长度不超过16';
        return mean(t,truename1,info,intext)
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
        let intext = '*&nbsp;至少六位，包含数字大小写字母和!@#$%^&*'
		let info = '密码';
		return mean(t, p1, info,intext)
	}
}

function checkPassword_checkOnly(t) {//3
	let reg = /^.*(?=.{6,})(?=.*[A-Za-z!@#$%^&*?]|\d).*$/;
	let va = t.value;
	if(reg.test(va)) {
		return true;
	} else {
		return false;
	}
}

function PasswordLevel(t){
	let level = 0;
	let va = t.value;
	if(va.match(/[0-9]/)){
		level++;
	}
	if(va.match(/[a-z]/)){
		level++;
	}
	if(va.match(/[A-Z]/)){
		level++;
	}
	if(va.match(/[!@#$%^&*?]/)){
		level++;
	}
	if(!checkPassword_checkOnly(t)){
		t.nextElementSibling.innerHTML = '格式错误☹';
		t.nextElementSibling.style.color = 'red';
	}else if(level<=1){
		t.nextElementSibling.innerHTML = '弱■□□';
		t.nextElementSibling.style.color = 'red';
	} else if(level == 2){
		t.nextElementSibling.innerHTML = '中■■□';
		t.nextElementSibling.style.color = 'orange';
	} else{
		t.nextElementSibling.innerHTML = '强■■■';
		t.nextElementSibling.style.color = 'green';
	}
}

function checkPassword2(t) {//4
	let va = t.value;
	let va1 = $("#password").val();
	if(va == va1 ) {
		p2 = true;
		return mean(t, p2)
	} else {
		p2 = false;
		let intext = '*&nbsp;两次输入密码不一致'
		let info = '确认密码';
		return mean(t, p2, info, intext)
	}
}

function checkEmail(t) {//5
	let reg = /^\w+@[a-zA-Z0-9]{2,}(?:\.[a-z]{2,}){1,3}$/;
	let va = t.value || '';
	if(reg.test(va)) {
		ema = true;
		return mean(t, ema)
	} else {
		ema = false;
		let intext = '*&nbsp;应为正确的邮箱格式'
		let info = '邮箱';
		return mean(t, ema, info, intext)
	}
}


function checkPhone(t) {//6
	let reg = /^1[34578]\d{9}$/;
	let va = t.value;
	if(reg.test(va)) {
		phone1 = true;
		return mean(t, phone1)
	} else {
		phone1 = false;
		let intext = '*&nbsp;应为符合手机号格式的11位数字'
		let info = '手机号';
		return mean(t, phone1, info, intext)
	}
}

function checkAddress(t){//7
    let reg = /^([\u4e00-\u9fa5]|\w){2,30}$/;
    let va = t.value;
    if(reg.test(va)){
        address = true;
        return mean(t,address)
    } else {
        address = false;
        let info = '地址';
		let intext = '*&nbsp;不应包含除下划线外的其他字符'
        return mean(t,address,info,intext)
    }
}

function checkAll(){
	return checkUsername(document.getElementById("username"))&&
		   checkTruename(document.getElementById("username"))&&
		   checkPassword(document.getElementById("password"))&&
		   checkPassword2(document.getElementById("password2"))&&
		   checkPhone(document.getElementById("phone"))&&
		   checkEmail(document.getElementById("email"))&&
		   checkAddress(document.getElementById("address"));
}
function getCookie(name){
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]);
    return null;
   }

function turn_to_home(){
	alert("您已经登录了");
	window.location.replace('./home.html');
}
function jump_to_login(){
	window.location.replace('./login.html');
}

$(document).ready(function(){
	if(getCookie("username")!=null){
		turn_to_home();
	}
	$("#registerAndLogin_button").click(function(){
		if(checkAll()){
		var username = $("#username").val();
		var truename = $("#truename").val();
		var password = $("#password").val();
		var password2 = $("#password2").val();
		var phone = $("#phone").val();
		var email = $("#email").val();
		var address = $("#address").val();
		$.ajax({
			 url: "../PHP/register.php",  
			 type: "POST",
			 data:{
				 "username":username,
				 "truename":truename,
				 "password":password,
				 "phone":phone,
				 "email":email,
				 "address":address
				},
			 //dataType: "json",
			 //async: false,
			 error: function(){  
				 alert('emmm  好像断网了呢(´д｀)……');  
				 alert(data);
			 },  
			 success: function(data,status){//如果调用php成功 
				//alert(status);
				alert(data);
				jump_to_login();
				//$('.con').html("用户名:"+data[0]+"密码:"+data[1]);
			 }
		});
		} else alert("输入格式错误！");
		
	})
})
