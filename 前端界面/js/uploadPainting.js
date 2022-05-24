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

function check(t) {//0
    let reg = /^([\u4e00-\u9fa5]|\w){1,16}$/;
	let va = t.value;
    if(reg.test(va)){
        checkResult = true;
        return mean(t, checkResult);
    }else{
		checkResult = false;
        //let info = '格式错误,';
        let intext = `*&nbsp;不能包含特殊字符`;
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
    let reg = /^\d+(\.\d{1,})?$/;
	let va = t.value;
	if(reg.test(va)) {
		checkResult = true;
		return mean(t, checkResult)
	} else {
		checkResult = false;
		//let info = '格式错误,';
        let intext = `*&nbsp;只能填写正实数`;
		return mean(t, checkResult,intext)
	}
}

function checkAll(){
    return  check(document.getElementById("title"))&&
            check(document.getElementById("FirstName"))&&
            check(document.getElementById("LastName"))&&
            check(document.getElementById("description"))&&
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


$(document).ready(function(){
	$("#upload_submit_button").click(function(){
		if(checkAll()){
		$.ajax({
			 url: "http://localhost:63342/upload_painting.php",  
			 type: "POST",
			 data:{
				 "img_path":"temp.png",
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
                 "uploader":getCookie("username"),
                 "heat":0,
                 "is_sold":0,
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
				//alert(data=="上传艺术品成功！");
				/*if(data=="登录成功"){
					jump_to_home();
					//var x = document.cookie;
					//alert("此即为"+document.cookie);
				}*/
			 }
		});
		} else alert("输入格式错误！");
		
	})
})