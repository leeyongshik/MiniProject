<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="/team_project/resources/css/reset.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="/team_project/resources/css/sideBanner.css">
<link rel="stylesheet" href="/team_project/resources/css/header.css">
<link rel="stylesheet" href="/team_project/resources/css/sidebar.css">
<link rel="stylesheet" href="/team_project/resources/css/container.css">
<link rel="stylesheet" href="/team_project/resources/css/modal.css">
<link rel="stylesheet" href="/team_project/resources/css/message.css">
<link rel="stylesheet" href="/team_project/resources/css/footer.css">
<style type="text/css">
@import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css");
body{
   background-color: #fafafa;
}
.container2{
   width: 90%;
   height: 450px;
   margin: 100px auto;
}
.container3{
   margin: auto;
}
.container_right{
   width : 45%;
   float: left;
   margin-left: 20px;
}
#container_left{
   width: 45%;
   height: 500px;
   float: left;
   margin-left: 20px;
}
.container2:after{
   content: '';
   clear: both;
}
.container_content{
   
   width: 80%;
   height: 400px;
   margin: 0 auto;
}
.container_content:after{
   content: '';
   clear: both;
}
#container2 {
   padding: 30px 20px;
   width: 1000px;
   margin: 0 auto;
}

#comment_write {
   padding: 20px 15px;
   border-bottom: 1px solid #7BAEB5;
}
      
#comment_write label {
   display: inline-block;
   width: 80px;
   font-size: 14px;
   font-weight: bold;
   margin-bottom: 10px;
}

#comment_write input[type='text'], #comment_write textarea {
   border: 1px solid #ccc;
   vertical-align: middle;
   padding: 3px 10px;
   font-size: 12px;
   line-height: 150%;
}

#comment_write textarea {
   width: 380px;
   height: 90px
}
      
.comment_item {
   font-size: 13px;
   color: #333;
   padding: 15px;
   border-bottom: 1px dotted #ccc;
   line-height: 150%;
}

.comment_item .writer {
   color: #555;
   line-height: 200%;
}
      
.comment_item .writer input {
   vertical-align: middle;
}
      
.comment_item .writer .name {
   color: #222;
   font-weight: bold;
   font-size: 14px;
}
#content{
   overflow: auto;
}

#container_left #gallery_main{
   margin-bottom: 10px;
   width: 100%;
   height: 80%;
}
#container_left #gallery_main img{
   width: 100%;
   height: 100%;
   border-radius: 5px;
}
#container_left #gallery{
   width: 100%;
   height: 20%;
   text-align: center;
}
#gallery > li {
  display: inline-block;
  margin: 0 10px;
}
#gallery > li > img{
  display: block;
  width: 100px;
  height:80px;
  cursor: pointer;
  border-radius: 5px;
}
#innerText{
   margin-left : 20px;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/main/header.jsp"></jsp:include>


<div class="container2">
<input type="hidden" id="mypoint"> 
   <input type="hidden" value="${param.product_seq}" name="product_seq" id="product_seq">
   <input type="hidden" value="" name="hit" id="hit">
   <input type="hidden" value="${id}" id="msgid">
   <div id="container3">
      <div id="container_left">
         <div id="gallery_main">
            <img src="" alt="???????????????" class="img1" id="photo">
         </div>
         <ul id="gallery">
            <li><img src="" alt="???????????????1" class="img1"></li>
            <li><img src="" alt="???????????????1" class="img2"></li>
            <li><img src="" alt="???????????????2" class="img3"></li>
            <li><img src="" alt="???????????????3" class="img4"></li>
         </ul>
      </div>
      <div class="container_right">
         <hr style="margin-bottom: 20px;">
         <span id="subject" name="subject" style="padding: 10px; font-weight: 700;"></span> <br>
         <hr style="margin-top: 20px; margin-bottom: 20px;">
         <div id="innerText">
            <div style="margin-bottom: 10px;">
               ????????? : <span id="hopeprice" name="hopeprice"></span><br>
            </div>
            <div style="margin-bottom: 10px;">
               ????????? : <span id="startprice" name="startprice"></span><br>
            </div>
            <div style="margin-bottom: 10px;">
               ????????? : <span id="nowprice" name="nowprice"></span><br>
            </div>
            <div style="margin-bottom: 10px;">
               ???????????? : <span class="timer"></span><br>
            </div>
            <div style="margin-bottom: 10px;">
               ?????? :  ???????????? <span id="bidstatus" name="bidstatus">**</span> ??? (????????? ????????? ?????? ??????)<br>
            </div>
            <div style="margin-bottom: 10px;">
               ???????????? : <span id="trade_way" name="trade_way"></span>
            </div>
            <div style="margin-bottom: 10px;">
               ??????(??????) : <span id="unitprice" name="unitprice"></span><br>
            </div>
               ???????????? : 
                  <input type="button" value="-" id="minus" style="width: 40px;">
                  <input type="number" name="bidprice" id="bidprice" style="text-align: center; width: 150px;">
                  <input type="button" value="+" id="plus" style="width: 40px;"><br>
                  
                  
                     <input type="button" value="????????????" name="bidBtn" id="bidBtn" style="margin-left: 10px; margin-top: 30px; width: 300px; height: 40px;">
                  
                  <input type="hidden" name="productid" id="productid">
            <input type="hidden" id="hit">
         </div>
      </div>
   </div>
</div>
<div class="container_content">
   <br>
   <h3>????????????</h3>
   <hr style="margin-top: 20px; margin-bottom: 20px;">
   <pre id="content" style="overflow: auto; width: 100%; height: 300px;white-space: pre-wrap; margin : 20px;"></pre>
   <hr>
</div>

<div id="container2">
   <div id="container2">
      <div class="card mb-2">
         <div class="card-header bg-light">
              <i class="fa fa-comment fa"></i> ??????
         </div>
         <div class="card-body">
         <ul class="list-group list-group-flush">
             <li class="list-group-item">
            <div class="form-inline mb-2">
            </div>
            <textarea class="form-control" id="comment" rows="3"></textarea>
            <input type="button" class="btn btn-dark mt-3" id="commentSubmit" value="????????????"></button>
             </li>
         </ul>
         </div>
      </div>
   </div>
   <div class="card mb-2" id="commentlist"></div>
</div>

<jsp:include page="/WEB-INF/main/footer.jsp"></jsp:include>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript" src="/team_project/resources/js/index.js"></script><script type="text/javascript" src="/team_project/resources/js/header.js"></script>
<script type="text/javascript" src="/team_project/resources/js/quick_menu.js"></script>
<script type="text/javascript" src="/team_project/resources/js/jquery.tmpl.min.js"></script>
<script type="text/x-jquery-tmpl" id="commentTemplate">
<div class="card mb-2">
   <div class="card-body">
      <ul class="list-group list-group-flush">
          <li class="list-group-item">
         <div class="form-inline mb-2" id="\${comment_seq}">
            <div class="form-control ml-2">????????? : \${comment_id} </div>
            <div class="form-control ml-2">?????? ?????? : \${logtime}</div>
            <textarea class="form-control" rows="3" readonly>\${comment_content}</textarea>
            <button type="button" class="btn btn-dark mt-3"  onClick="updateComment(\${comment_seq})">????????????</button>
            <button type="button" class="btn btn-dark mt-3"  onClick="deleteComment(\${comment_seq})">????????????</button>
         </div>
          </li>
      </ul>
   </div>
</div>
</script>
<script>
 
  var photo = document.getElementById("photo");
  var thumbnail = document.querySelectorAll("#gallery > li > img");
 
  for ( var i = 0; i < thumbnail.length; i++ )
    thumbnail[i].addEventListener("click", function () {
 
       photo.setAttribute("src", this.getAttribute("src"));
 
    });
 
</script>
<script type="text/javascript">
var socket  = null;
$(document).ready(function(){
   
      // ????????? ??????
       sock = new SockJS("<c:url value='/echo-ws'/>");
       socket = sock;

       // ???????????? ?????? ???????????? 
       sock.onmessage = onMessage; // toast ??????
         console.log(sock);
       
       
    // toast?????? ??? ??????
       function onMessage(evt){
           var data = evt.data;
           // toast
           let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true'>";
           toast += "<div class='toast-header'><i class='fas fa-bell mr-2'></i><strong class='mr-auto'>??????</strong>";
           toast += "<button type='button' class='ml-2 mb-1 close' data-dismiss='toast' aria-label='Close'>";
           toast += "<span aria-hidden='true'>&times;</span></button>";
           toast += "</div> <div class='toast-body'>" + data + "</div></div>";
           $("#msgStack").append(toast);   // msgStack div??? ????????? toast ??????
           $(".toast").toast({"animation": true, "autohide": false});
           $('.toast').toast('show');
       };   
       
          $(document).on('click','.toast-header .close',function (){
             $(this).parents('.toast').remove();
          
          });
       
          setInterval(function() {
               $.ajax({
                   type : 'post',
                   url : '/team_project/product/showGettingPrd',
                   dataType : 'json',
                   success : function (data) {
                      $('#msgSeq').val(data.product_seq)
                      let type = '70';
                    let target = data.get_id;
                      let content = "???????????? '"+data.subject+"' ????????? ?????????????????????.";
                      let msgseq = data.product_seq
                    let url = '/team_project/message/messageList';
                    
              
                 // ????????? ????????? db??? ??????   
                   $.ajax({
                        type: 'post',
                           url: '/team_project/test/saveNotify',
                        data: {
                           target: target,
                            content: content,
                         type: type,
                         url: url,
                         msgseq : msgseq
                        },
                  success: function(){    // db?????? ????????? ????????? ?????? ??????
                      socket.send("?????????,"+target+","+content+","+url + ","+msgseq);
                  }
              });
              $('#msgContent').val('');   // textarea ?????????
                      
                  },
                  error : function (err) {
                  }
                });
            }, 300);
});

</script>
<script type="text/javascript">
function CountDownTimer(dt, id){
    var end = new Date(dt);

    var _second = 1000;
    var _minute = _second * 60;
    var _hour = _minute * 60;
    var _day = _hour * 24;
    var timer;
    
    function showRemaining() {
        var now = new Date();
        var distance = end - now;
        if (distance < 0) {
            clearInterval(timer);
            document.getElementById(id).innerHTML = '????????? ?????????????????????!';
            return; 
        }
        var days = Math.floor(distance / _day);
        var hours = Math.floor((distance % _day) / _hour);
        var minutes = Math.floor((distance % _hour) / _minute);
        var seconds = Math.floor((distance % _minute) / _second);

        document.getElementById(id).innerHTML = days + '??? ';
        document.getElementById(id).innerHTML += hours + '?????? ';
        document.getElementById(id).innerHTML += minutes + '??? ';
        document.getElementById(id).innerHTML += seconds + '???';
    }
    timer = setInterval(showRemaining, 1000);
    /* if(timer = setTimeout()) */
    
}
</script>
<script type="text/javascript">
   $.ajax({
      type : 'post',
      url : '/team_project/product/getProductView',
      data : 'product_seq='+$('#product_seq').val(),
      dataType : 'json',
      success : function (data) {
         $('.img1').attr('src','/team_project/resources/img/'+data.img1);
         if(data.img2 == null) $('.img2').remove();
         if(data.img3 == null) $('.img3').remove();
         if(data.img4 == null) $('.img4').remove();
         $('.img2').attr('src','/team_project/resources/img/'+data.img2);
         $('.img3').attr('src','/team_project/resources/img/'+data.img3);
         $('.img4').attr('src','/team_project/resources/img/'+data.img4);
         $('#subject').text(data.subject);
         $('#hopeprice').text(data.hopeprice);
         $('#startprice').text(data.startprice);
         $('#nowprice').text(data.nowprice);
         $('#unitprice').text(data.unitprice);
         $('#content').text(data.content);
         $('#bidprice').val(data.nowprice);
         $('#hit').val(data.hit);
         $('.timer').attr('id',data.product_seq);
         if(data.trade_way ==1) $('#trade_way').text('?????? ??????')
         if(data.trade_way ==2) $('#trade_way').text('?????????')
         
         var end = new Date(data.endDate);
         var time=end.getMonth()+1+'/'+end.getDate()+'/'+end.getFullYear()+' '+end.getHours()+':'+end.getMinutes();
         
         CountDownTimer(time, data.product_seq) 
      },
      error : function (err) {
         
      }
   });
   //?????????
     $.ajax({
               type : 'post',
               url : '/team_project/product/updateHit',
               data : 'product_seq='+$('#product_seq').val()+'&hit='+$('#hit').val(),
               dataType : 'json',
               success : function (data) {
               },
               error : function (err) {
               }
            }); 
     $.ajax({
         type : 'post',
         url : '/team_project/prdComment/getComment',
         data : 'product_seq='+$('#product_seq').val(),
         dataType : 'json',
         success : function (data) {
            
              $.each(data,function(index, items){
                 var tmpl= $('#commentTemplate').tmpl(data[index]);   
                   $('#commentlist').append(tmpl);
               /*  $('<tr/>',{text: items.comment_id})
                .append($('<td>',{text:items.comment_id}))
                .append($('<td>',{text:items.comment_content}))
                .append($('<td>',{text:items.logtime}))
                .append($('<input>',{type:'button',id:items.comment_content, value:"??????" , text:items.comment_id ,height:'30',width :'50', onclick :'updateComment(this.id)' }))
                .append($('<input>',{type:'button',id:items.comment_seq,  text :"??????",height:'30',width :'50', onclick : 'deleteComment(this.id)'}))
                .appendTo($('#commentA')) */
             }) 
         },
         error : function (err) {
            
         }
      })
   
</script>
<script type="text/javascript">
$('#commentSubmit').click(function () {
   if('${id}'!=''){
   $.ajax({
      url : '/team_project/prdComment/commentSet',
      type: 'post',
      data : 'comment_id='+'${id}'+'&product_seq='+$('#product_seq').val()+'&comment_content='+$('#comment').val(),
      dataType : 'json',
      success : function(data){
            alert('?????? ?????? ??????')
      },
      error : function(err){
      console.log(err)
      }
   });
   location.reload()
      }else{
         alert('??????????????? ????????????')
   }
})
function updateComment(data) {
   var id = data+''
   var up = document.getElementById(id).children[2] 
   var ch = document.getElementById(id).children[3]
   var del = document.getElementById(id).children[4]
   var checkId = document.getElementById(id).children[0].innerHTML.substring(6)
   if ('${id}' == '') {
         alert('????????? ?????????????????????')
   }else{
         if (checkId!='${id}'){
            alert('????????? ????????? ?????? ???????????????')
         } else {
            ch.setHTML('??????')
            del.setHTML('??????')
            up.removeAttribute('readonly')
            ch.removeAttribute('onClick')
            del.removeAttribute('onClick')
            ch.setAttribute('onClick', "updateSubmit(" + data + ")")
            del.setAttribute('onClick', "cancelupdateSubmit(" + data + ")")
         }
      }
   }
function deleteComment(data) {
   var id = data + ''
   var checkId = document.getElementById(id).children[0].innerHTML
         .substring(6)
   if ('${id}' == '') {
      alert('????????? ?????????????????????')
   }
   else{
      if (checkId != '${id}'){
         alert('????????? ????????? ?????? ???????????????')
      }else{
         var check = confirm('????????? ?????? ???????????????????')
         if (check) {
         $.ajax({
            url : '/team_project/prdComment/deleteComment',
            type : 'post',
            data : 'comment_seq=' + data,
            success : function() {
               alert('?????? ?????? ??????')
               location.reload()
            },
            error : function(err) {
               console.log(err);
            }
         });
         } 
         else {
         alert('?????? ??????')
         }
      }
      }
   
}
function cancelupdateSubmit(data) {
   var id = data+''
   var up = document.getElementById(id).children[2] 
   var ch = document.getElementById(id).children[3]
   var del = document.getElementById(id).children[4]
   ch.setHTML('????????????')
   del.setHTML('????????????')
   up.setAttribute('readonly','readonly')
   ch.removeAttribute('onClick')
   del.removeAttribute('onClick')
   ch.setAttribute('onClick',"updateComment("+data+")")
   del.setAttribute('onClick',"deleteComment("+data+")")
}
function updateSubmit(data) {
   
   var id = '#'+data+'>textarea'
   var updatecon = $(id).val()
   console.log(data)
   console.log(updatecon)

   var check = confirm('????????? ?????? ???????????????????')
   if(check){
      $.ajax({
         url : '/team_project/prdComment/updateComment',
         type: 'post',
         data : 'comment_seq='+data+'&comment_content='+updatecon,
         success : function(){
               alert('?????? ?????? ??????')
            location.reload()
         },
         error : function(err){
            console.log(err);
         }
      });
   }else{
      
   }
   
}

$('#plus').click(function () {
   var nowprice = eval($('#bidprice').val()+' + '+$('#unitprice').text()); 
   console.log(nowprice);
   if(nowprice>$('#hopeprice').text()){
      alert('???????????? ???????????? ????????? ??? ????????????')   
      $('#bidprice').val($('#hopeprice').text());
   }else{
   $('#bidprice').val(nowprice);
   }
});
$('#minus').click(function () {
   var nowprice = eval($('#bidprice').val()+' - '+$('#unitprice').text());
   console.log(nowprice);
   if(nowprice<$('#nowprice').text()){
      alert('???????????? ????????? ???????????? ???????????? ????????????')   
      $('#bidprice').val($('#nowprice').text())
   }else{
   $('#bidprice').val(nowprice);
   }
});

$(function () {
   if('${id}'!=''){
   $.ajax({
      url : '/team_project/user/getMyPoint',
      type: 'post',
      dataType : 'json',
      success : function(data){
         $('#mypoint').val(data)
      },
      error : function(err){
         console.log(err)
      }
   })
   } 
})

/* ???????????? ?????? */
$('#bidBtn').click(function () {
   if('${id}'==''){
      alert("???????????? ????????? ????????? ???????????????")
   }else if(eval($('#bidprice').val())<=eval($('#nowprice').text())) {
      alert("???????????? ??????????????? ????????? ?????????")
   }else if(eval($('#mypoint').val())<eval($('#bidprice').val())){
      alert('???????????? ???????????????')
   }
   else{
   $.ajax({
      url : '/team_project/bid/setBid',
      type: 'post',
      data : 'id='+'${id}'+'&product_seq='+$('#product_seq').val()+'&bidprice='+$('#bidprice').val()+'&subject='+$('#subject').text(),
      success : function(){
         $(function () {
            $.ajax({
               url : '/team_project/bid/bidSetHigh',
               type: 'post',
               data: 'product_seq='+$('#product_seq').val(),
               dataType : 'json',
               success : function(data){
                  
               },
               error : function(err){
                  console.log(err)
               }
            })
         })
         alert("?????????????????????. \n ?????? ?????? ??????????????? ???????????? ???????????? ???????????????.")
         location.reload()
      },
      error : function(err){
         console.log(err);
      }
      
   });
   
}
});
   $.ajax({
      url:'/team_project/bid/getBidCount',
      type: 'post',
      data : 'product_seq='+$('#product_seq').val(),
      dataType:'text',
      success : function(data){
         $('#bidstatus').text(data)
      },
      error : function(err){
         alert(err)
      }
   })
</script>
</body>
</html>