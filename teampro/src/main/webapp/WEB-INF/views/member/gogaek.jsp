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
			width:1000px;
			height:500px;
			margin:auto;
			background:white;
		}
	</style>
</head>
<body>
<section>
   <c:if test="${userid != 'admin' }">
	<a href="../member/clist"> 내 문의 내역 </a>
	<a href="../member/cwrite"> 문의하기 </a>
	</c:if>
	
	 <c:if test="${userid == 'admin' }">
	<a href="../member/member_coun"> 관리자용 문의목록 </a>
	</c:if>
	
</section>
</body>
</html>