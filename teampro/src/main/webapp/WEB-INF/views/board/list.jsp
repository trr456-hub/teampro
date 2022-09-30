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
		height:100%;
		margin:auto;
		background:white;
	}
	#main {
		width:1200px;
		height:800px;
		margin:auto;
	}
	#content {
		width:1000px;
		height:700px;
		margin:auto;

		padding-top:30px;
	}
	#content table {
		margin:auto;
		width:600px;
		height:500px;
		border:1px solid #cccccc;
	}
	#content table tr, td {
		text-align:center;
		border-bottom:1px solid #cccccc;
		font-size:15px;
	}
	a {
		text-decoration:none;
		color:black;
	}
	a:hover {
		text-decoration:underline;
	}
</style>
</head>
<body>
<section>
<div id="main">
	<div id="content">
		<table width="800" align="center">
			<tr>
				<td> 제 목 </td>
				<td> 아이디 </td>
				<td> 조회수 </td>
				<td> 작성일 </td>
			</tr>
		<c:forEach items="${list}" var="bvo">
			<tr>
				<td> <a href="readnum?id=${bvo.id}"> ${bvo.title} </a> </td>
				<td> ${bvo.userid} </td>
				<td> ${bvo.readnum} </td>
				<td> ${bvo.writeday} </td>
			</tr>
		</c:forEach>
			
			<tr>
				<td colspan="4" align="center">
				<!-- 10페이지 단위로 이전 이동 -->
					<c:if test="${pstart != 1}">	<!-- 첫번째 그룹X -->
						<a href="list?page=${pstart-1}"> ◀ </a>
					</c:if>		
					<c:if test="${pstart == 1}">	<!-- 첫번째 그룹 10이전 X -->
						◀
					</c:if>
					
					<c:if test="${page != 1}"> <!-- 1페이지 아닐때 -->
						<a href="list?page=${page-1}"> ◁ </a>
				   	</c:if>
				   	<c:if test="${page == 1}">	<!-- 현재페이지 1일 경우 -->
				   		◁
				   	</c:if>
				
				
					<c:forEach begin="${pstart}" end="${pend}" var="i">	<!-- 출력 -->
						<!-- 현재 페이지 색 -->
						<c:if test="${page == i}">
							<c:set var="st" value="style='color:blue;'"/>
						</c:if>
						<c:if test="${page != i}">
							<c:set var="st" value=""/>
						</c:if>
						
						<a href="list?page=${i}" ${st}>${i}</a>
					</c:forEach>
					
					<c:if test="${page != chong}"> <!-- 현재 페이지가 마지막X -->
						<a href="list?page=${page+1}"> ▷ </a>
					</c:if>
					<c:if test="${page == chong}"> <!-- 현재페이지가 마지막 -->
						▷
					</c:if>
					
					<c:if test="${chong != pend}">	<!-- 마지막 그룹X -->
						<a href="list?page=${pend+1}"> ▶ </a>
					</c:if>
					<c:if test="${chong == pend}">	<!-- 마지막 그룹일경우 -->
						▶
					</c:if>
				</td>
			</tr>
			
			<tr>
				<td colspan="4" align="center">
					<a href="write"> 글쓰기 </a>
				</td>
			</tr>
		</table>
	</div>
</div>
</section>

</body>
</html>



