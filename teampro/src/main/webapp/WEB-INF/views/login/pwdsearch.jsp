<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
		width:100%;
		height:500px;
		margin:auto;
		background:white;
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
		    	 document.getElementById("view_pwd").innerText="비밀번호 : "+imsi;
		     }
		  }
	  }
}
</script>
</head>
<body>
	<section>
	<div id="view_pwd"></div>
   		<form name="pwd_search" id="pwd_search">
      <input type="text" name="userid" placeholder="아이디"> <p>
      <input type="text" name="name" placeholder="이름 "> <p>
      <input type="text" name="email" placeholder="이메일"> <p>
      <input type="button" value="비밀번호찾기" onclick="pwd_search_fn()">
    </form>
	</section>
</body>
</html>