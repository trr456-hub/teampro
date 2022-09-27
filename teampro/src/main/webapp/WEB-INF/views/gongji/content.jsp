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
		width:400px;
		height:70%;
		margin:auto;
	}
      td {
        height:30px;
        font-size:10pt;
        background:#FAFAFA;
     }
     #aa{
    	background:#dcdcdc;
        font-weight:bold;
        text-align:center;
     }
</style>
</head>
<body>
	<section>
   <div id="section">
	<table width="400" align="center" border="1">
		<caption> <h2> 공 지 사 항 </h2> </caption>
		<tr>
		 <td id="aa"> 제 목 </td>
		  <td colspan="3"> ${gvo.title} </td>
		 </tr>
		 <tr>
		  <td id="aa"> 작성일
		  <td width="90"> ${gvo.writeday} </td>
		  <td id="aa"> 조회수
		  <td width="90"> ${gvo.readnum} </td>
		</tr>
		<tr height="130">
		  <td id="aa"> 내용 </td>
		  <td colspan="3"> ${gvo.content} </td>
		</tr>
		<tr>
		<td colspan="4" align="center">
		<a href="list"> 목록 </a>
		<%-- <c:if test="${userid=='admin'}"> --%>
		<a href="update?id=${gvo.id}"> 수정 </a>
		<a href="delete?id=${gvo.id}"> 삭제 </a>
		<%-- </c:if> --%>
		</td>
		</tr>
	</table>
  </div>
  </section>
</body>
</html>


