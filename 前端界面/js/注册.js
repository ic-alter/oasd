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
        let intext = '*&nbsp;格式错误';
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
        let intext = '*&nbsp;格式错误';
        return mean(t,truename1,info,intext)
    }
}

function checkGender(t){//2
    let reg = /^[0-9]{1}$/;
    let va = t.value;
    if(reg.test(va)){
        gender = true;
        return mean(t,gender)
    } else {
        gender = false;
        let info = '性别';
        return mean(t,gender,info)
    }
}

function checkPassword(t) {//3
	let reg = /^\w{6,16}$/;
	let va = t.value;
	if(reg.test(va)) {
		p1 = true;
		return mean(t, p1)
	} else {
		p1 = false;
        let intext = '*&nbsp;格式错误'
		let info = '密码';
		return mean(t, p1, info,intext)
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
	let reg = /^\w+@(qq|163|sina)\.(com|cn)(.cn)?$/;
	let va = t.value || '';
	if(reg.test(va)) {
		ema = true;
		return mean(t, ema)
	} else {
		ema = false;
		let intext = '*&nbsp;邮箱格式错误'
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
		let intext = '*&nbsp;没有该手机号'
		let info = '手机号';
		return mean(t, phone1, info, intext)
	}
}

function checkAddress(t){//7
    let reg = /^([\u4e00-\u9fa5]|\w){4,30}$/;
    let va = t.value;
    if(reg.test(va)){
        address = true;
        return mean(t,address)
    } else {
        address = false;
        let info = '地址';
        return mean(t,address,info)
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

$(document).ready(function(){
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
			 url: "http://localhost:63342/register.php",  
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
				 alert('error');  
				 alert(data);
			 },  
			 success: function(data,status){//如果调用php成功 
				alert(status);
				alert(data);
				//$('.con').html("用户名:"+data[0]+"密码:"+data[1]);
			 }
		});
		} else alert("输入格式错误！");
		
	})
})

/*$(function(){
	$("#registerAndLogin_button").click(function(){
		$.ajax({
			url: "http://localhost:63342/注册.php",
			type: "POST",
			data:$("#register_table").serialize(),
		   // data: k + "=" + v,
			dataType: "json",
			global: true,
			success: function () {
				//console.log(res.username)
				alert("success")
			},
			error:function(){
				// console.log(xhr)
				// console.log(em)
				// console.log(e)
				alert("请确认填入数据的准确性");
			}
		})
	})
})*/

/*
$("#registerAndLogin_button").click(function(){
		$.post("http://localhost:63342/注册.php",$("#register_table").serialize(),function(res){
			alert(res)
		},"json")
	})
function checkAll() {
	if(username1 &&truename1 && gender&& p1 && p2 && ema && phone1 &&address) {
		regiterfn()
		async function regiterfn(){
			let answer=await pAjax({
				url:'http://localhost:63342/注册.php',
				data:{
					username:document.tijiao.username.value,
                    truename:document.tijiao.truename.value,
                    gender:document.tijiao.gender.value,
					password:document.tijiao.password.value,
                    email:document.tijiao.email.value,
                    phone:document.tijiao.phone.value,
                    address:document.tijiao.address.value
				}
			})
			if(answer=='用户名已存在'){
				inputs[0].nextElementSibling.innerHTML='用户名已存在'
				inputs[0].nextElementSibling.style.color='red'
				return false;
			}else{
				return true;
			}
		}
		
	} else {
		checkUsername(document.tijiao.username.value)
        checkTruename(document.tijiao.truename.value)
		checkGender(document.tijiao.gender.value)
		checkPassword(document.tijiao.password.value)
        checkEmail(document.tijiao.email.value)
		checkPhone(document.tijiao.phone.value)
        checkAddress(document.tijiao.address.value)
        return false
	}
}*/

//原文链接：https://blog.csdn.net/lff18277233091/article/details/104072898