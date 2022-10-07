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
		height:500px;
		margin:auto;
		background:white;
		padding-bottom:70px;
	}
	#main {
		width:1100px;
		height:100%;
		margin:auto;
		background:white;
	}
	#content {
		width:900px;
		height:100%;
		margin:auto;
		padding-top:60px;
		padding-bottom:200px;
		
	}
	#left {
		margin-left:60px;
		float:left;
	}
	#right {
		float:right;
		margin-right:50px;
	}
	#adm {
		position: relative;
	    top: -500px;
	    left: 390px;
	    font-size:20px;
	    font-weight: bold;
	}
</style>
</head>
<body>
<section>
<div id="main">
	<div id="content">
	<c:if test="${userid != 'admin' }">
		<div id="left">
			<a href="../member/clist"> 
				<img src="../resources/img/상담1.PNG">
			</a>
		</div>
		<div id="right">
		<c:if test="${userid != null }">
			<a href="../member/cwrite">
				<img src="../resources/img/상담2.PNG"> <!--  width="250" height="250" -->
			</a>
			</c:if>
			<c:if test="${userid == null }">
			<a href="../login/login">
				<img src="../resources/img/상담2.PNG">
			</a>
			</c:if>
		</div>
	</c:if>
	</div>
	
	<c:if test="${userid == 'admin' }">
		<div id="adm">
		<a href="../member/member_coun"> 관리자용 문의목록 </a>
		</div>
	</c:if>
</div>
</section>
</body>
</html>