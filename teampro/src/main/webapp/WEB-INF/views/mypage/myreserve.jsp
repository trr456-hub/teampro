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
		width:1000px;
		height:70%;
		margin:auto;
	}
	section table caption {
		text-alilgn:left;
	} 
	section table th {
		border-top:2px solid #cccccc;
		border-bottom:1px solid #cccccc;
	}
	section table td {
		border-bottom:1px solid #cccccc;
	}
	section table tr:last-child td {
		border-bottom:2px solid #cccccc;
	}
</style>
</head>
<body>
	<section>
		<table width="900" align="center">
			<caption> <h3> 리 뷰  </h3></caption>
			<tr height="60">
			 <th> 예매번호 </th>
			 <th> 영화제목 </th>
			 <th> 이름 </th>
			 <th> 좌석 </th>
			 <th> 가격 </th>
			 <th> 결제일 </th>
			</tr>
			<c:forEach items="${ylist}" var="yvo">
			<tr align="center" height="50">
			 <td> ${yvo.yemecode } 예매번호넣기 </td>
			 <td> <%-- ${yvo.ytitle } --%> 영화제목넣기 </td>
			 <td> ${name } </td>
			 <td> ${yvo.seatpass } 좌석넣기 </td>
			 <td> ${yvo.chong }</td>
			 <td> ${yvo.writeday } </td>	
			</tr>
			</c:forEach>
		</table>
	</section>
</body>
</html>