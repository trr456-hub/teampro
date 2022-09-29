<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
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
	#contetnt {
		margin:auto;
		width:1500px;
		height:2200px;
	}
	#category_pro {
		margin:auto;
		width:1000px;
		height:1800px;
	}
	#category_content {
		margin:auto;
		width:1000px;
		padding-top:25px;
	}
	#pro_img {
		float:left;
		width:500px;
		hegith:500px;
	}
	#pro_con {
		float:right;
		width:500px;
		hegith:500px;
	}
	.category_t_t {
		padding-top:30px;
		font-size:40px;
		border-bottom:3px solid black;
		color:black;
	}
	.con_price {
		height:50px;
		font-size:30px;
		color:black;
		border-bottom:1px solid #cccccc;
		padding-top:20px;
	}
	.con_gusung {
		height:150px;
		font-size:20px;
		margin-top:40px;
		color:black;
		border-bottom:1px solid #cccccc;
	}
	.con_gusung_db {
		padding-left:15px;
	}
	#su {
		margin-top:40px;
	}
	#tot {
		margin-left:20px;
		font-size:25px;
		color:black;
	}
	#btn_gumae {
		padding-top:30px;
	}
	.btn {
		width:250px;
		height:60px;
		display:block;
		border:1px solid black;
		font-size:20px;
		font-weight:bold;
		color:black;
	}
	#gumae_price {
		font-size:20px;
		padding-top:20px;
	}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	function pro_submit() {
		document.pro.submit();
	}
	
	$(function() {
		$("#spinner").spinner({
			min:1,
			max:10,
			spin:function(e,ui) {
				
				var total=parseInt(${pvo.price}*ui.value);
								// 할인금액을 뺀 상품금액 * 수량
				total=new Intl.NumberFormat().format(total); // 자바스크립트에  , 넣기
				document.getElementById("tot").innerText=total+"원";
				

			}
		});
	});

</script>

</head>
<body>

<section>

<form name="pro" method="post" action="pro_gumae">
<input type="hidden" name="pcode" value="${pvo.pcode}">
<div id="content">
	<div id="category_pro">
		<div class="category_t_t">
			${pvo.title}
		</div>
		<div id="category_content">
			<div id="pro_img">
				<ul>
					<img src="../resources/store/${pvo.pimg}" width="420" height="420">
				</ul>
			</div>
			<div id="pro_con">
				<p class="con_price">
					<span> <fmt:formatNumber value="${pvo.price}" pattern="#,###"/>원 </span>
				</p>
				<div class="con_gusung">
					<span style="font-weight:bold">상품구성</span>
					<span class="con_gusung_db">${pvo.gusung}</span> <br><br>
					<span style="font-weight:bold">유효기간</span>
					<span class="con_gusung_db">${pvo.gigan}</span> <br><br>
					<span style="font-weight:bold">원산지</span>
					<span class="con_gusung_db">&nbsp;&nbsp;&nbsp;${pvo.made}</span>
				</div>
					<div id="su">
						<input type="text" id="spinner" name="su" value="1" readonly>
					</div>
					<div id="gumae_price">
						<span>구매금액</span>
						<span id="tot"> <fmt:formatNumber value="${pvo.price}" pattern="#,###"/>원 </span>
					</div>
					<div id="btn_gumae">
						<button class="btn" onclick="pro_submit()"> 구매하기 </button>
					</div>
			</div>
		</div>
	</div>
</div>

</form>

</section>

</body>
</html>