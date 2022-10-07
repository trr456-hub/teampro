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
		width:1000;
		height:100%;
		margin:auto;
		background:white;
	}
	#content {
		margin:auto;
		width:1500px;
		height:1100px;
	}
	#category_content {
		margin:auto;
		width:1000px;
		height:1100px;
	}
	.menu_list {
		width:1000px;
		height:720px;
		display:flex;
		flex-wrap:wrap;
	}
	.menu_list_con {
		font-size:20px;
	}
	.menu_list li {
		text-align:center;
		height:330px;
		padding-left:30px;
		margin-left:5px;
		padding-top:30px;
	}
	#category_title {
		width:500px;
		margin:auto;
		text-align:center;		
		border-bottom:2px solid #cccccc;
		padding-top:20px;
	}
	#category_title a {
		font-size:20px;
	}
	#category_t {
		padding-bottom:20px;
	}
	.category_t_t {
		height:60px;
		margin-left:55px;
		padding-top:30px;
		font-size:40px;
		border-bottom:1px solid #cccccc;
		color:black;
	}
	#category_t ul {
		display:flex;
		height:100%;
	}
	#category_t ul li {
		margin-top:20px;
		margin-left:40px;
	}
	.end {
		width:800px;
		height:100px;
		margin-top:0px;
		border-top:2px solid #cccccc;
	}
	#ticket {
		font-size:25px;
	}

	
</style>

<script>
	function content_view(pcode) {
		location="../product/pro_content?pcode="+pcode
	}
</script>

</head>
<body>

<section>

<div id="content">
	<div id="category_content">
		<div id="category_title">
			<div id="category_t">
				<ul>
					<li>
						<a href="../product/pro_list"> 전체 </a>
					</li>
					<li>
						<a href="../product/pro_ticket"> 영화관람권</a>
					</li>
					<li>
						<a href="../product/pro_pop"> 팝콘 </a>
					</li>
					<li>
						<a href="../product/pro_com"> 콤보 </a>
					</li>
				</ul>
			</div>
		</div>
		<div class="category_t_t">
			<span>영화관람권</span>
			<span id="ticket">
				영화, 모두에게 즐거운 경험
			</span>
		</div>
		<ul class="menu_list">
	<c:forEach items="${plist}" var="pvo">
		<c:if test="${pvo.gubun == 1 }">
			<li onclick="content_view('${pvo.pcode}')" style="cursor:pointer">
				<span>
					<img src="../resources/store/${pvo.pimg}" width="270" height="270">
				</span> <br>
				<span class="menu_list_con">
					${pvo.title} <br>
					<fmt:formatNumber value="${pvo.price}" pattern="#,###"/>원
				</span>
			</li>
		</c:if>
	</c:forEach>
		</ul>
	</div>
</div>

</section>

</body>
</html>