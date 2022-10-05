<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    section {
		width:100%;
		background:white;
		padding-top:100px;
		padding-bottom:100px;
	}
	section table {
		width:800px;
		height:70%;
		margin:auto;
	}
	#yy {
	    font-weight:bold;
	    color:red;
	    text-align:center;
	}
	#ys {
		text-align:center;
	}
	#ty {
	 	text-decoration:none;
	}
	tr {
		height:40px;
	}
	#aa {
		background-color:#c9c9c9;
        font-weight:bold;
	}  
    td {
        height:30px;
        font-size:10pt;
        border-bottom:1px solid silver;
     }
    a {
       color:black;
       text-decoration:none;
     }
    #wr:link, #wr:visited {
     background-color:#5A78AF;
     color:white;
     padding: 5px 7px;
     text-align: center;
     text-decoration: none;
     display: inline-block;
     border-radius:5px;
	}
 	#wr:hover, #wr:active {
     background-color:white;
     color:#5A78AF;
     border:1px solid #5A78AF;
	}
 	section h3 {
     text-align:center;
     font-weight:bold;
     font-size:30px;
     padding-bottom:25px;  
   }
   section table caption {
    font-size:50px;
	line-height:30px;
   }
</style>
</head>
 <section>
  <div id="section">
		 <table width="500" align="center">
		 	<caption> <h3> 공 지 사 항 </h3></caption>
		 	<tr id="aa">
		 	  <td> 제 목 </td>
		 	  <td style="width:100px"> 작성자 </td>
		 	  <td style="width:100px"> 작성일 </td>
		 	  <td style="width:100px"> 조회수 </td>
			</tr>
			<c:forEach items="${list}" var="gvo">
			<c:if test="${gvo.gubun == '0' }">
			<tr id="bb">
		 	  <td id="ys"><a href="readnum?id=${gvo.id}"> ${gvo.title} </a></td>
		 	  <td> 관리자 </td>
		 	  <td> ${gvo.writeday} </td>
		 	  <td> ${gvo.readnum } </td>
			</tr>
			</c:if>
			<c:if test="${gvo.gubun == '1' }">
			<tr>
		 	  <td id="yy">
		 	  <a href="readnum?id=${gvo.id}" style="color:#4b7fd8" id="ty"> [중요] ${gvo.title} 
		 	  <!-- [중요] 글자 자리에 이미지파일 등 넣으면될듯함 --></a></td>
		 	  <td> 관리자 </td>
		 	  <td> ${gvo.writeday} </td>
		 	  <td> ${gvo.readnum } </td>
			</tr>
			</c:if>
			</c:forEach>
			<!-- 로그인연동, session으로 userid 받아오면 주석풀기 -->
			 <c:if test="${userid == 'admin' }">
			<tr>
				<td colspan="4" align="right">
				  <a href="write" id="wr"> 글쓰기 </a>
				</td>
			</tr>
			 </c:if>
		 </table>
	</div>
	</section>
</body>
</html>