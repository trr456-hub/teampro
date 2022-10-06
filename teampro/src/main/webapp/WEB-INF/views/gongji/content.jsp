<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
}
.main {
	padding-top:70px;
	padding-bottom:70px;
	background:white;
	width:100%;
}
.main .content {
	position:relative;
	overflow:hidden;
	padding:30px;
	width:800px;
	margin:0 auto;
	background:#fff
}
.main .content .table_con {
	margin: 0 auto;
    position: relative;
    padding: 30px;
    /* border: 1px solid #ccc; */
}
.content .table_con tr {
	border-bottom:1px solid #ccc;
	display: block;
}
.content .table_con tr > th {
	width: 72px;
   	padding: 12px;
   	color: #333;
   	background:silver;
}
.content .table_con tr > td {
	position: relative;
    left: 35px;
}
.main .content tr > .content_one {
	text-align: center;
    width: 87%;
    font-size: initial;
}
h3 {
	font-size: 22px;
   	font-weight: bold;
}
</style>
</head>
<body>
	<section>
	<div class="main">
		<div class="content">
			<table class="table_con">
				<caption><h3>공 지 사 항</h3></caption>
				<tr style="border-top:1px solid #ccc">
					<th>제 목</th>
					<td>${gvo.title}</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td>${gvo.writeday}</td>
					<th style="position:relative;left:180px;padding:0px;">조회수</th>
					<td style="position:relative;left:200px;">${gvo.readnum}</td>
				</tr>
				<tr>
					<th style="border-right: 1px solid #ccc;">내용</th>
					<td class="content_one" style="height:300px;left:0px">${gvo.content}</td>
					<td style="float:right;left:0px">
							<a href="list"> 목록 </a> 
						<c:if test="${userid=='admin'}">
							<a href="update?id=${gvo.id}"> 수정 </a>
							<a href="delete?id=${gvo.id}"> 삭제 </a>
						</c:if>
					</td>
				</tr>
			</table>
		</div>
	</div>
	</section>
</body>
</html>


