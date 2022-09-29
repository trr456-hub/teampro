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
section {
	width: 100%;
	height: 100%;
	margin: auto;
}
.reservePage {
	padding-top:100px;
	padding-bottom:100px;
	width:100%;
	background:#444;
}
.reservePage .reservePage-outLine {
	position:relative;
	overflow:hidden;
	width:1000px;
	margin:0 auto; 
	background:#F2F0E4;
}
.reservePage .reservePage-outLine .in-content {
	position:relative;
		color: white;
    background: #666;
}
.reservePage .top-head {
	margin: 0 auto;
    width: 68px;
    font-size: 17px;
}
.reservePage .main-content {
	position:relative;
}
.reservePage .main-content .contents {
	width:960px;
	height:100%;
	margin:20px;
}
.main-content .contents .taptap {
	border: 2px solid #ccc;
    width: 250px;
    height: 310px;
    display: flex;
    margin: 20px 33px;
    float: left;
   	border-radius: 10%;
}
</style>
</head>
<body>
	<section> 
		<div class="reservePage">
			<div class="reservePage-outLine">
				<div class="in-content">
					<div class="top-head">
						예매목록
					</div>
					<div class="main-content">
						<div class="contents">
							<c:forEach items="${ylist}" var="yvo">
								<div class="taptap">
									<div>${yvo.code}-${yvo.jcode}${yvo.mcode}-${yvo.yemecode}</div>
									<div>${yvo.ytitle}</div>
									<div>${name}</div>
									<div>${yvo.seatpass}</div>
									<div>${yvo.chong}</div>
									<div>${fn:substring(yvo.monthday,0,4)}-${fn:substring(yvo.monthday,4,6)}-${fn:substring(yvo.monthday,6,8)}</div>
									<div>${yvo.writeday}</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	<%-- <c:forEach items="${ylist}" var="yvo">
		<tr align="center" height="50">
			<td>${yvo.code}-${yvo.jcode}${yvo.mcode}-${yvo.yemecode}</td>
			<td>${yvo.ytitle}</td>
			<td>${name}</td>
			<td>${yvo.seatpass}</td>
			<td>${yvo.chong}</td>
			<td>
				${fn:substring(yvo.monthday,0,4)}-${fn:substring(yvo.monthday,4,6)}-${fn:substring(yvo.monthday,6,8)}
			</td>
			<td>${yvo.writeday}</td>
		</tr>
	</c:forEach> --%>
	</section>
</body>
</html>