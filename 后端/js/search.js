var page;
var total_page;

function page_valid(check_page){
    return check_page>0&&check_page<=total_page;
}

function getInformation(data){
    var size = data.data.length;
    var html="";
    if(size==0){
        html = `<p>暂未搜索到相关艺术品</p>`;
    } else{
    for(let i = 0 ;i<size;i++){
        html += `<div>
        <a href="`+"./paintingDetail.html?id="+data.data[i].PaintingID+`"><table class="inf_table">
            <tr>
                <td colspan="2"><img src="`+"../painting_imgs/"+data.data[i].ImageFileName+`" ></td>
            </tr>
            <tr>
                <td>名称</td><td>`+data.data[i].Title+`</td>
            </tr>
            <tr>
                <td>作者</td><td>`+data.data[i].artist+`</td>
            </tr>
            <tr>
                <td>售价</td><td>`+data.data[i].Cost +`万美元</td>
            </tr>
            <tr>
                <td>简介</td><td>`;
        var description = data.data[i].Description;
        var smaller_description = description==null?"暂无数据":description.slice(0,60);
        html+=smaller_description+`</td>
            </tr>
            <tr>
                <td>访问量</td><td>`+data.data[i].heat +`</td>
            </tr>
        </table></a></div>`;
    }
    }
    //console.log(html);
    document.getElementById("search_result").innerHTML=html;
    var html_page_select = "";
    for(let i = page-3;i<=page+3;i++){
        if(page_valid(i)){
            html_page_select+=`<tr>  
                <button class="page_button" name="page" value="`+i+`" onclick="change_page(`+i+`)" >`+i+`</button>
            </tr>`;
        }
    }
    //console.log(html_page_select);
    document.getElementById("select_page_buttons").innerHTML=html_page_select;
}

function ajaxFetchData(){
    $.ajax({
        url: "http://localhost:63342/PHP/search.php",  
        type: "GET",
        data:{
            "search_text":document.getElementById("search_text").value,
            "FirstName":document.getElementById("FirstName").value,
            "LastName":document.getElementById("LastName").value,
            "OrderMethod":document.getElementById("OrderMethod").value,
            "page":page
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
           total_page=data.count;
           var obj = document.getElementById("total_page");
           obj.innerHTML = total_page;
           getInformation(data);
           
        }
   
   })
}

function search(){
    page = 1;
    document.getElementById("now_page").innerHTML = 1;
    ajaxFetchData();
}

function change_page(va){
    let reg = /^[1-9][0-9]{0,}$/;
    if(reg.test(va)&&va<=total_page){
        page = va;
        ajaxFetchData();
        document.getElementById("now_page").innerHTML = page;
    }else{
        let page_error = document.getElementById("page_error");
        page_error.style.color = red;
        page_error.innerHTML = "*&nbsp;请填写小于最大页数的正整数";
    }
}

function pre_page(){
    if(page_valid(page-1)){
        //document.getElementById("now_page").innerHTML = page-1;
        change_page(page-1);
    } else{
        alert("已经在最前页");
    }
}
function next_page(){
    if(page_valid(page+1)){
        //document.getElementById("now_page").innerHTML = page-1;
        change_page(page+1);
    } else{
        alert("已经在最后页");
    }
}

$(document).ready(function(){
    page = 1;
    document.getElementById("now_page").innerHTML = 1;
    ajaxFetchData();
})