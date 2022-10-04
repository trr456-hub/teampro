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
     text-align:center;
     background:white;
   }
   section input[type=text] {
     width:400px;
     height:30px;
     outline:none;
   }
   section textarea {
     width:400px;
     height:200px;
     margin-top:20px;
   }
   section input[type=submit] {
     width:308px;
     height:34px; 
     margin-top:20px;
     background:#5E17EB;
     border:1px solid #5E17EB;
     color:white;
     border-radius:3px;
   }
    section h3 {
     text-align:center;
     font-weight:bold;
     padding-top:50px;
     padding-bottom:15px;
     padding-left:9px;
   }
   section table caption {
    font-size:20px;
	line-height:30px;
   }
 </style> 
</head>
<body>
  <section>
  <form method="post" action="cwrite_ok">
	<caption><h3> 상담문의 </h3> </caption>
		<div> <input type="text" name="title" placeholder="제 목 "> </div>
		<div> <textarea cols="40" rows="6" name="content" placeholder="상담내용"> </textarea></div>
		<div> <input type="submit" value="저장하기"></div>
		</form>
  </section>
</body>
</html>