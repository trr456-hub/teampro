<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
 <style>
    section {
       width:100%;
       height:700px;
       margin:auto; 
       text-align:center;
       background:white;
       padding-top:100px;
    }
    body {
    	width:1200px;
     	height:900px;
    	background-image:url("../resources/bimg/영화배경.png");
    	background-repeat:no-repeat;
    	background-position:center center;
    	background-size: 1200px 900px;
    	align:center;
    	margin:auto;
    }
     section #left {
	    width:500px;
	    height:400px;
	    float:left;
        text-align:center;
	    margin-top:15px;
    }
    section div {
    	margin-top:15px;
    }
    section h2 {
    	margin-top:50px;
    }
    section input[type=text] {
       width:200px;
       height:40px;
       border:0px solid white;
       border-bottom:2px solid black;
    }
    section input[type=password] {
       width:200px;
       height:40px;
       border:0px solid white;
       border-bottom:2px solid black;
    }
    section input[type=submit] {
       width:180px;
       height:50px;
       border:1px solid #eeeeee;
       background:#3c3c3c;
       color:white;
       font-size:15px;
    }
    section #cg {
    	color:#FF6E6E;
    	font-size:50px;
    }
 </style>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
 	// 아이디저장 (될지안될지 모름)
	 $(function() {
	     
	     fnInit();
	   
	});
	
	function frm_check(){
	   saveid();
	}
	
	function fnInit(){
	  var cookieid = getCookie("saveid");
	  console.log(cookieid);
	  if(cookieid !=""){
	      $("input:checkbox[id='saveId']").prop("checked", true);
	      $('#logId').val(cookieid);
	  }
	  
	}    
	
	function setCookie(name, value, expiredays) {
	  var todayDate = new Date();
	  todayDate.setTime(todayDate.getTime() + 0);
	  if(todayDate > expiredays){
	      document.cookie = name + "=" + escape(value) + "; path=/; expires=" + expiredays + ";";
	  }else if(todayDate < expiredays){
	      todayDate.setDate(todayDate.getDate() + expiredays);
	      document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
	  }
	  
	  
	  console.log(document.cookie);
	}
	
	function getCookie(Name) {
	  var search = Name + "=";
	  console.log("search : " + search);
	  
	  if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
	      offset = document.cookie.indexOf(search);
	      console.log("offset : " + offset);
	      if (offset != -1) { // 쿠키가 존재하면 
	          offset += search.length;
	          // set index of beginning of value
	          end = document.cookie.indexOf(";", offset);
	          console.log("end : " + end);
	          // 쿠키 값의 마지막 위치 인덱스 번호 설정 
	          if (end == -1)
	              end = document.cookie.length;
	          console.log("end위치  : " + end);
	          
	          return unescape(document.cookie.substring(offset, end));
	      }
	  }
	  return "";
	}
	
	function saveid() {
	  var expdate = new Date();
	  if ($("#saveId").is(":checked")){
	      expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30);
	      setCookie("saveid", $("#logId").val(), expdate);
	      }else{
	     expdate.setTime(expdate.getTime() - 1000 * 3600 * 24 * 30);
	      setCookie("saveid", $("#logId").val(), expdate);
	       
	  }
	}
	
	// 아이디 저장 끝
 </script>
</head>
<body>
  <section>
    <form method="post">
    <div id="left"> <img src="../resources/bimg/양초.jpg" width="400" height="400" style="padding-left:250px;border-radius:5px;"> </div>
    	<h2> <span id="cg"><img src="../resources/img/CCA4.png" width="90" height="40"></span> <!-- CGV 글자 대신 img src로고 크기조절해서 넣으면 됩니다 --> 
    	로그인 </h2>
    	<div> <input type="text" name="userid" id="logId" placeholder="아이디"></div>
    	<div> <input type="password" name="pwd" placeholder="비밀번호"> </div>
    	<div class="logSave">
		    <input type="checkbox" class="save_id" name="checkId" id="saveId" >
		    <label for="saveId">아이디 저장</label>
		</div>
    		<c:if test="${err ==1 }">
    			<br> <span style="color:red;font-size:12px;"> 아이디 혹은 비밀번호가 맞지 않습니다 </span>
    		</c:if>
  		<div> <input type="submit" name="로그인" value="로그인 하기 →" formaction="login_ok"> </div>
  		<div> <input type="submit" name="회원가입" value="회원가입 하기 →" formaction="../member/memberinput"> </div>
  		<div> <input type="submit" name="로그인" value="메인 홈페이지 →" formaction="../main/index"> </div>
  	</form>
  </section>
</body>    