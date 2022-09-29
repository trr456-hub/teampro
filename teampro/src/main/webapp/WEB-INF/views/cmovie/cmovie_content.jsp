<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
section{
	width:100%;
	background:white;
}
table {
	margin: auto;
	align: center;
	width: 900px;
	border: 5px solid #eeeeee;
	background: white;
}

#cont {
	width: 500px;
}

#rev_wr {
	display: table-cell;
	float: none;
	width: 200px;
	height: 100px;
	vertical-align: middle;
	padding-left: 30px;
	text-align: left;
	color: #666;
	font-size: 14px;
	white-space: nowrap;
	display:inline;
	padding-top: 30px;
	padding-bottom: 40px;
}

#title {
	/* vertical-align:top;
		line-height:200%;
		padding-left:30px; */
	
}
#tt {
	margin-bottom: 60px;
	height: 300px;
	font-size: 23px;
	font-weight: bold;
}

h2 {
	text-align: center;
}

#review {
	margin: auto;
	width: 500px;
	margin-bottom: 30px;
	margin-top: 20px;
}

#review .pers {
	display: flex;
	flex-wrap: wrap;
	list-style-type: none;
	margin: 0px;
	padding-top: 15px;
	padding-bottom: 15px;
}

#review .pers div {
	margin: auto;
	float: right;
	position: relative;
	width:600px;
	height: 34px;
	padding: 0;
	border-radius:10px;
}
/*     #review .pers div :first-child {
    	border-top:1px solid red;
    } */
#hh {
	border: 1px solid #eeeeee;
}

input[type=button] {
	width: 90px;
	height: 30px;
	font-size: 13px;
	border-radius: 4px;
	border: 1px solid #5E17EB;
	color: white;
	background: #5E17EB;
}
</style>
</head>
<body>
 	<section>
	<table width="500" align="center" border="1">
		<tr>
			<td width="310" style="padding-top: 30px;"><img
				src="../resources/mimg/${cvo.pimg}" width="200"><br>
			<br>
			<br></td>
			<td id="title" style="line-height: 200%"><span id="tt"
				style="border-bottom: 2px solid #cccccc">${cvo.title}</span> <br>
				감독 : ${cvo.gamdok} <br> 배우 : ${cvo.baeoo } <br>
			<br> 개봉일 : ${cvo.gaebong} <br>
			<br>
			<br> <input type="button" name="예매" value="예매하기">
			</td>
		</tr>
		<tr>
			<td style="padding-left: 200px; padding-right: 200px;" align="center"
				colspan="2">${cvo.content}</td>
		</tr>
		<tr>
			<td colspan="2"><article id="review">
				<h2
					style="padding: 0 0 16px 0; font-size: 1.4666em; color: #503396; padding-top: 150px;">
					${cvo.title} 영화리뷰</h2>
				<div id="rev_wr">
					<span style="color: #01738b">${cvo.title} </span> 재미있게 보셧나요?
						<c:if test="${userid != null }">
						<div
						style="display: table-cell; width: 150px; vertical-align: middle; text-align: center; white-space: nowrap;"
						onclick="location='../review/review?mcode=${cvo.mcode}&id=${cvo.id}'">
						관람평 쓰기</div>
						</c:if>
						<c:if test="${userid == null }">
						<div
						style="display: table-cell; width: 150px; vertical-align: middle; text-align: center; white-space: nowrap;"
						onclick="location='../login/login'">
						관람평 쓰기</div>
						</c:if>
				</div>
				
				<div class="pers">
					<c:forEach items="${rlist}" var="rvo">
						<div style="border: 1px solid #eeeeee;padding-bottom: 20px;">
							<div
								style="display: block;
					 		    width: 100%;">
					   <span style="display: table-cell;
							    width: 125px;
							    height: 50px;
							    padding: 0 20px 0 0;
							    vertical-align: middle;">${rvo.title}</span><span style="width:350px;display: table-cell;
							    position: relative;
							    padding: 0 20px 0 30px;
							    text-align: left;
							    color: #666;
							    vertical-align: middle;
							    font-size: .9333em;
							    line-height: 1.4;">${rvo.content}</span>
													<span style="font-size:12px;display:table-cell;
							    width: 85px;
							    height: 50px;
							    padding: 0 20px 0 0;
							    vertical-align: middle;">${rvo.writeday}</span></div>
											</div>
											<p>
					</c:forEach>
				</div>
				</article></td>
		</tr>
	</table>
</body>
</html>