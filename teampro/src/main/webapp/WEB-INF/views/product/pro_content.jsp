<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#content {
		width:1600px;
		height:2300px;
	}
	#category_pro {
		width:980px;
		height:500px;
		margin:auto;
	}
</style>

<script>
	function pro_submit() {
		document.pro.submit();
	}
</script>

</head>
<body>

<section>

<form name="pro" method="post" action="pro_gumae">
<input type="hidden" name="pcode" value="${pvo.pcode}">
<div id="content">
	<div id="category_pro">
		<strong>
		"CGV 영화관람권"
			<span>
				기프트콘
			</span>
		</strong>
		 <div id="su"> 
          <input type="text" id="spinner" name="su" value="1" readonly>
        </div>
		<div id="pro_img">
			<img src="../resources/ticket/${pvo.pimg}" width="420" height="420">
		</div>
		<div>
			${pvo.title } ${pvo.pcode } ${pvo.price }
		</div>
		<div id="pro_con">
			<span class="btn"> 장바구니 </span>
			<span class="btn" onclick="pro_submit()"> 바로구매 </span>
		</div>
	</div>
</div>

</form>

</section>

</body>
</html>