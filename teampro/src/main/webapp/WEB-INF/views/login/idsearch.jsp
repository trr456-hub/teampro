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
	 input[type=text] {
       width:200px;
       height:40px;
       border:0px solid white;
       border-bottom:2px solid black;
    }
    input[type=password] {
       width:200px;
       height:40px;
       border:0px solid white;
       border-bottom:2px solid black;
    }
    input[type=button] {
       width:180px;
       height:50px;
       border:1px solid #eeeeee;
       background:#3c3c3c;
       color:white;
       font-size:15px;
    }
</style>
<script>
function userid_search_fn() {
	  var name=document.userid_search.name.value;
	  var email=document.userid_search.email.value;
	  var us=new XMLHttpRequest();
	  us.open("get","userid_search_ok?name="+name+"&email="+email);
	  us.send();
	  us.onreadystatechange=function() {
		  if(us.readyState==4) {
		     if(us.responseText=="0") {
		    	 alert("이름 혹은 이메일이 틀립니다.");
		     }	 
		     else {   
		    	 var imsi=us.responseText.trim();
		    	 document.getElementById("userid_search").style.display="none";
		    	 document.getElementById("view_userid").innerText="아이디 : "+imsi;
		     }
		  }
	  }
}

</script>
</head>
<body>
   <section>
   <div id="view_userid"></div>
   <div>
    <form name="userid_search" id="userid_search">
      <input type="text" name="name" placeholder="이름 "> <p>
      <input type="text" name="email" placeholder="이메일"> <p>
      <input type="button" value="아이디찾기" onclick="userid_search_fn()">
    </form>
    </div>
   </section>
</body>
</html>