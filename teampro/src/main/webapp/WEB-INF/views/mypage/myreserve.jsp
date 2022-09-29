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
.taptap .content-in {
	width:100%;
	margin:10px;
}
.taptap .toptop {
	color: #5E17EB;
    font-family: fantasy;
    font-size: 15px;
    text-align: right;
}
.taptap .content-in > .ytext{
	font-size:10px;
	color:#6666668c;
	text-align: center;
    margin-bottom: 12px;
}
.content-in .ytext > .yemecode {
	color:#333333;
	font-size:16px;
}
.content-in .ytext > .ytitle {
	color: #333333;
    font-size: 20px;
    margin-bottom: 10px;
    padding-top: 10px;
    padding-bottom: 10px;
    text-align: center;
    border-top: 2px solid black;
    border-bottom: 2px solid black;
}
.content-in .ytext > .yname {
	color:#333333;
	font-size:16px;
}
.content-in .ytext > .seatpass {
	color:#333333;
	font-size:16px;
}
.content-in .ytext > .monthday {
	color:#333333;
	font-size:16px;
}
.content-in .ytext > .writeday {
	color:#333333;
	font-size:16px;
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
									<div class="content-in">
										<div class="toptop">CCA</div>
										<div class="ytext">
											<div class="ytitle">${yvo.ytitle}</div>
										</div>
										<div class="ytext">
											예매번호
											<div class="yemecode">${yvo.code}-${yvo.jcode}${yvo.mcode}-${yvo.yemecode}</div>
										</div>
										<div class="ytext">
											예매자명 
											<div class="yname">${name}</div>
										</div>
										<div class="ytext">
											좌석
											<div class="seatpass">${yvo.seatpass}</div>
										</div>
										<div class="ytext">
											예매날짜
											<div class="monthday">${fn:substring(yvo.monthday,0,4)}-${fn:substring(yvo.monthday,4,6)}-${fn:substring(yvo.monthday,6,8)}</div>
										</div>
										<div class="ytext">
											결제날짜
											<div class="writeday">${yvo.writeday}</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>