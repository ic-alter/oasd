function setCookie(cname,cvalue,exdays){
    var d = new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    //alert(cname+" "+ cvalue);
    document.cookie = cname + "=" + cvalue + "; " + expires ;
  }
  function getCookie(name){
      var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
      if(arr != null) return unescape(arr[2]);
      return null;
     }
  function delCookie(name) {
      /*var exp = new Date();
      exp.setTime(exp.getTime() - 1);*/
      var cval = getCookie(name);
      //alert("cval = "+cval);
      setCookie("username",getCookie("username"),-1);
  }

function logout(){
    delCookie("username");
    window.location.replace("./home.html");
}

function search_or_detail(){
    //alert(window.location.pathname!="/html/paintingDetail.html");
    if(window.location.pathname!="/html/paintingDetail.html"){
        window.location.replace("./search.html");
    } else{
        alert("您已经处在艺术品详情界面");
    }
}


$(document).ready(function(){
    //alert(getCookie("username"));
	if(getCookie("username")!=null){
        var index_register = document.getElementById('index_register');
        index_register.style.display = 'none';
        var index_login = document.getElementById('index_login');
        index_login.style.display = 'none';
    } else {
        var index_myInformation = document.getElementById('index_myInformation');
        index_myInformation.style.display = 'none';
    }
})