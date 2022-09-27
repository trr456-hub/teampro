<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#aa{
		background:#dcdcdc;
        font-weight:bold;
        text-align:center;
	}
	input[type=submit] {
     background-color:#5A78AF;
     color:white;
     padding: 5px 7px;
     text-align: center;
     text-decoration: none;
     display: inline-block;
     border-radius:5px;
    }
</style>
</head>
<body>
	<form method="post" action="write_ok">
	 <table width="500" align="center">
	 <caption> <h2> 공지사항 글쓰기 </h2> </caption>
	  <tr>
	  	<td id="aa"> 제 목 </td>
	  	<td> <input type="text" name="title"> 
	  	<input type="checkbox" name="gubun" value="1">
	  		[중요]</td>
	  </tr>
	  <tr>
	  	<td id="aa"> 내 용 </td>
	  	<td> <textarea cols="30" rows="10" name="content"> </textarea> </td>
	  </tr>
	  <tr>
	  	<td colspan="2" align="center"> <input type="submit" value="저장"> </td>
	  </tr>
	 </table>
	 </form>
</body>
</html>