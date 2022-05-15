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
    let reg2 = /^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$/;
	let va = t.value;
	if(reg.test(va)||reg2.test(va)) {
		username1 = true;
		return mean(t, username1)
	} else {
		username1 = false;
		let info = '账号';
        let intext = '*&nbsp;格式错误';
		return mean(t, username1, info,intext)
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

function checkAll(){
	return checkUsername(document.getElementById("username"))&&
		   checkPassword(document.getElementById("password"));
}

$(document).ready(function(){
	$("#registerAndLogin_button").click(function(){
        //alert("114514");
		if(checkAll()){
		var username = $("#username").val();
		var password = $("#password").val();
		$.ajax({
			 url: "http://localhost:63342/login.php",  
			 type: "POST",
			 data:{
				 "username":username,
				 "password":password,
				},
			 //dataType: "json",
			 //async: false,
			 error: function(){  
				 alert('error');  
				 alert(data);
			 },  
			 success: function(data,status){//如果调用php成功 
				//alert(status);
				alert(data);
				//$('.con').html("用户名:"+data[0]+"密码:"+data[1]);
			 }
		});
		} else alert("输入格式错误！");
		
	})
})