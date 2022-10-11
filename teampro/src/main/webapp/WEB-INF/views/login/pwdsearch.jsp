<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
section {
	width: 100%;
	height: 100%;
	margin: auto;
	background: white;
}

input[type=text] {
	width: 200px;
	height: 40px;
	border: 0px solid white;
	border-bottom: 2px solid black;
}

input[type=password] {
	width: 200px;
	height: 40px;
	border: 0px solid white;
	border-bottom: 2px solid black;
}

input[type=button] {
	width: 180px;
	height: 50px;
	border: 1px solid #eeeeee;
	background: #3c3c3c;
	color: white;
	font-size: 15px;
}

.pwdSform {
	position: absolute;
	margin: 140px;
	margin-top: 60px;
}
#view_pwd {
	margin: 0 auto;
    text-align: center;
    margin-top: 200px;
    font-size: 28px;
    border: 1px solid;
    padding-top: 20px;
    padding-bottom: 20px;
    display:none;
}
</style>
<script>
function pwd_search_fn() {
	  var userid=document.pwd_search.userid.value;
	  var name=document.pwd_search.name.value;
	  var email=document.pwd_search.email.value;
	  var ps=new XMLHttpRequest();
	  ps.open("get","pwd_search_ok?userid="+userid+"&name="+name+"&email="+email);
	  ps.send();
	  ps.onreadystatechange=function() {
		  if(ps.readyState==4) {
		     if(ps.responseText=="0") {
		    	 alert("아이디,이름 혹은 이메일이 틀립니다.");
		     }
		     else {   
		    	 var imsi=ps.responseText.trim();
		    	 document.getElementById("pwd_search").style.display="none";
		    	 document.getElementById("view_pwd").style.display="block";
		    	 document.getElementById("view_pwd").innerText= "회원님의 비밀번호는 는 "+ imsi +" 입니다.";
		     }
		  }
	  }
}
</script>
</head>
<body>
	<section>
	<div id="view_pwd"></div>
	<form name="pwd_search" id="pwd_search" class="pwdSform">
		<caption><h2 style="text-align:center;">비밀번호찾기</h2></caption>
		<input type="text" name="userid" placeholder="아이디">
		<p>
			<input type="text" name="name" placeholder="이름 ">
		<p>
			<input type="text" name="email" placeholder="이메일">
		<p style="text-align:center;">
			<input type="button" value="비밀번호찾기" onclick="pwd_search_fn()">
	</form>
	</section>
</body>
</html>