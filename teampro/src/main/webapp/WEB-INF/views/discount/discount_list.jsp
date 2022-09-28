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
	#main {
		margin:auto;
		width:1500px;
		height:2200px;
	}
	#sale {
		margin:auto;
		width:1000px;
		height:1100px;
	}
	.sale_content {
		width:1000px;
		height:720px;
		display:flex;
		flex-wrap:wrap;
	}
	.sale_content li {
		height:308px;
		padding:10px;
		border:1px solid #cccccc;
		margin-left:20px;
		margin-top:5px;
	}
	.menu_list li {
		text-align:center;
		height:330px;
		padding-left:30px;
		margin-left:5px;
		padding-top:30px;
	}
	#sale_title {
		width:500px;
		margin:auto;
		text-align:center;		
		border-bottom:2px solid #cccccc;
		padding-top:20px;
	}
	#sale_title a {
		font-size:16px;
	}
	#sale_t {
		padding-bottom:20px;
	}
	#sale_t_t {
		height:60px;
		margin-left:55px;
		padding-top:30px;
		font-size:40px;
		border-bottom:1px solid black;
		color:black;
	}
	#sale_t ul {
		display:flex;
		height:100%;
	}
	#sale_t ul li {
		margin-top:20px;
		margin-left:40px;
	}
	.sale_content div .content_txt {
		display:block;
		height:48px;
		padding:0px;
		padding-left:10px;
		font-size:19px;
		margin-top:5px;
		margin-bottom:5px;
		color:black;
		padding-bottom:5px;

	}
	.end {
		width:800px;
		height:100px;
		margin-top:0px;
		border-top:2px solid #cccccc;
	}

	
</style>

<script>
	function content_view(dcode) {
		location="../discount/discount_content?dcode="+dcode
	}
</script>

</head>
<body>

<section>

<div id="main">
	<div id="sale">
		<div id="sale_title">
			<div id="sale_t">
				<ul>
					<li>
						<a href="../discount/discount_list"> 전체 </a>
					</li>
					<li>
						<a href="../product/pro_ticket"> 통신사 </a>
					</li>
					<li>
						<a href="../product/pro_pop"> 신용카드 </a>
					</li>
					<li>
						<a href="../product/pro_com"> 포인트 </a>
					</li>
					<li>
						<a href="../product/pro_com"> 극장별할인 </a>
					</li>
				</ul>
			</div>
		</div>
		<div id="sale_t_t">
			CGV할인정보
		</div>
		<ul class="sale_content">
	<c:forEach items="${dlist}" var="dvo">
			<li onclick="content_view('${dvo.dcode}')">
				<div>
					<div>
						<img src="../resources/discount/${dvo.dimg}" width="280" height="270">
					</div>
					<strong class="content_txt">${dvo.title}</strong>
					<span>${dvo.gigan}</span>
				</div>
			</li>
	</c:forEach>
			<div id="end"></div>
		</ul>
			
	</div>
</div>

</section>

</body>
</html>