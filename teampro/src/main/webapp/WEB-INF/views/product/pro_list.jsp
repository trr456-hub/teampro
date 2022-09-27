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
		width:1000;
		height:100%;
		margin:auto;
		background:white;
	}
	#content {
		width:1500px;
		height:1200px;
	}
	#category_content {
		margin:auto;
		width:1000px;
		height:1100px;
		
	}
	#menu_list {
		width:1000px;
		height:980px;
		display:flex;
		flex-wrap:wrap;
	}
	#menu_list li {
		height:350px;
	}
	strong {
		font-size:20px;
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
		<strong>
			"영화관람권"
			<span> 영화, 모두에게 즐거운 경험 </span>
		</strong>
		<ul id="menu_list">
	<c:forEach items="${plist}" var="pvo">
			<li onclick="content_view('${pvo.pcode}')">
				<span>
					<img src="../resources/ticket/${pvo.pimg}" width="270" height="270">
				</span> <br>
				<span>
					${pvo.title}
				</span>
			</li>
	</c:forEach>
		</ul>
	</div>
</div>

</section>

</body>
</html>