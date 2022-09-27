<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
   section {
     width:100%;
    
     background:white;
   }
   section table {
   	width:900px;
   	 margin:auto;
   }
   section td {
     width:100px;
     height:300px;
     padding-left:100px;
     padding-right:50px;
     padding-bottom:100px;	
     vertical-align:top;
     display: inline-block;
   }
   section h2{
   	 width:900px;
   	 padding:10px;
   	 padding-left:5px;
   	 border-bottom:3px solid black;
   }
   section td:hover {
      cursor:pointer;
   }
   section td div {
     margin-top:5px;
   }
   section #title {
     font-size:15px;
   }
   section #title {
   	font-size:17px;
   	font-weight:bold;
   }
   section #gaebong {
   	font-size:13px;
   }
   section #rank {
    width:126px;
  	height:19px;
  	margin:auto;
   	background:#7878E1;
   	padding:6px 30px;;
   	text-align:center;
   	color:white;
   }
 </style>
 <script>
   function content_view(mcode) {
	   location="../cmovie/cmovie_content?mcode="+mcode;
   }
 </script>
</head>
<body>
	<section>
	<div style="width:300px;">
	 <c:set var="i" value="0"/>
	 <table width="700" align="center" cellspacing="15">
	 <div style="position: relative;
		   	 height:35px;
		   	 padding-top: 30px;
		   	 padding-left:30px;
		   	 border-bottom: 3px solid #241d1e;
		   	 width:1000px;">
	 <span style="display: inline-block;
		    position: relative;
		    height: inherit;
		    margin: 0;
		    background-image: none;
		    color: #222;
		    font-weight: 500;
		    font-size: 24px;
		    text-align: left;
		    vertical-align: middle;"> 무비차트 </span></div>
	  <tr>
	  <c:forEach items="${list}" var="cvo">	  
	   <td onclick="content_view('${cvo.mcode}')">
	   <div>
	   <div id="rank"> 
	   	NO.
	   </div>
	   <div id="img"> 
	   <img src="../resources/mimg/${cvo.pimg}" width="186" height="260" style="padding-left:30px;"> </div>
	   <div id="title">
	   	${cvo.title}
	   </div>
	   <div id="gaebong">
	   	${cvo.gaebong} 개봉
	   </div>
	   </div>
	   </td>  
	  </c:forEach>
	  </tr>
	 </table>
	 </div>
	</section>
</body>
</html>