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
	#main {
		margin:auto;
		width:1500px;
		height:100%;
	}
	#content {
		width:1000px;
		margin:auto;
	}
	#content_title {
		margin:auto;
		width:1000px;
		height:50px;
		padding-top:20px;
		border-bottom:2px solid #cccccc;
		font-size:20px;
		color:black;
	}
	#title_left {
		float:left;
	}
	#title_right {
		float:right;
	}
	#title_event {
		color:blue;
		font-weight:bold;
	}
	#content_img {
		width:1000px;
		padding-top:20px;
	}
	#list {
		margin:auto;
		width:1000px;
		height:100px;
		padding-top:20px;
		font-size:20px;
	}
	
	
	
</style>
</head>
<body>

<section>

<div id="main">
	<div id="content">
		<div id="content_title">
			<div id="title_left">
				<span id="title_event">PUB이벤트</span>
				<span>${dvo.title}</span>
			</div>
			<div id="title_right">
				<span>${dvo.gigan}</span>
			</div>	
		</div>
		<div id="content_img">
			<img src="../resources/discount/${dvo.dcimg}" width="1000">
		</div>
	</div>	
	<div id="list">
		<a href="../discount/discount_list">목록</a>
	</div>
</div>
</section>

</body>
</html>