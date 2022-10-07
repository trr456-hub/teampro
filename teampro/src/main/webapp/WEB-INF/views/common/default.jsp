<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Team Project</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	/* 카테고리 슬라이드 */
	$(function() {
		$(".nav_menu").mouseenter(function() {
			$(this).find(".nav_overMenu").stop().slideDown(700);
		});

		$(".nav_menu").mouseleave(function() {
			$(this).find(".nav_overMenu").stop().slideUp(700);
		});
		/* 카테고리 슬라이드 종료 */
		/* 무비차트 슬라이드 */
		$(".button-prev").click(function() {
			$("#in-element").animate({
				"marginLeft" : "0px"
			}, 1000, function() {
				$(".movieChart").css("margin-left", "-0px");
			});
		});
		$(".button-next").click(function() {
			$("#in-element").animate({
				"marginLeft" : "-1010px"
			}, 1000, function() {
				$(".movieChart").stop().css("margin-left", "-0px");
			});
		});
		/* 무비차트 슬라이드 종료 */
	});
</script>
<script>
	/* top배너 onclick */
	function closeBanner() {
		document.getElementById("ad_top").style.display = "none";
	}
</script>
<decorator:head />
</head>
<!-- 맨위 광고 -->
<body class="">
	<div class="cgvwrap" id="cgvwrap">
		<div class="ad_top" id="ad_top">
			<!-- 맨위광고 부분 -->
			<div class="topimg">
				<img alt="어벤저스" src="../resources/img/avengers.png">
			</div>
			<div class="btn_ad_close" onclick="closeBanner()">
				<img alt="닫기" src="../resources/img/btn_ad_close.png">
			</div>
		</div>

		<!-- 배너,로그인,카테고리 -->
		<div class="header">
			<!-- 서비스 메뉴 -->

			<div class="header_content">
				<div class="contents">
					<h1 onclick="">
						<!-- 로고 -->
						<a href="../main/index"> <img alt="CCA" src="../resources/img/CCA4.png">
						</a> <span> EZEN.TEAMPROJECT </span>
					</h1>
					<ul class="memberInfo">
						<!-- 로그인 -->
						<c:if test="${userid == null }">
						<li><a href="../login/login"> <img alt=""
								src="../resources/img/loginPassword.png"> <span>로그인</span>
						</a></li>
						<li><a href="../member/memberinput"> <img alt=""
								src="../resources/img/loginJoin.png"> <span>회원가입</span>
						</a></li>
						</c:if>
						<c:if test="${userid != null }">
						<li><a href="../login/logout"> <img alt=""
								src="../resources/img/loginPassword.png"> <span>로그아웃</span>
						</a></li>
						</c:if>
						<c:if test="${userid == null}">
						<li><a href="../login/login"> <img alt=""
								src="../resources/img/loginMember.png"> <span>MY CCA</span>
						</a></li>
						</c:if>
						<c:if test="${userid != null }">
						<li><a href="../mypage/myinfo"> <img alt=""
								src="../resources/img/loginMember.png"> <span>MY CCA</span>
						</a></li>
						</c:if>
						<li><a href="../member/gogaek"> <img alt=""
								src="../resources/img/loginCustomer.png"> <span>고객센터</span>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="nav">
				<div class="contents" id="contents">
					<ul class="nav_menu">
						<!-- 카테고리 -->
						<li>
							<h2>
								<a href="#">영화</a>
							</h2>
							<dl class="nav_overMenu">
								<dt>
									<h2>
										<a href="#" tabindex="-1">영화</a>
									</h2>
								</dt>
								<dd>
									<h3>
										<a href="../cmovie/cmovie_list">무비차트</a>
									</h3>
								</dd>
								<dd>
									<h3>
										<a href="../review/review_list">무비포스트</a>
									</h3>
								</dd>
							</dl>
						</li>
						<li>
							<h2>
								<a href="#">극장</a>
							</h2>
							<dl class="nav_overMenu">
								<dt>
									<h2>
										<a href="#" tabindex="-1">극장</a>
									</h2>
								</dt>
								<dd>
									<h3>
										<a href="../main/cca_self">CCA극장</a>
									</h3>
								</dd>
								<dd>
									<h3>
										<a href="../main/ccagj">특별관</a>
									</h3>
								</dd>
							</dl>
						</li>
						<li>
							<h2>
								<a href="#">예매</a> 
							</h2>
							<dl class="nav_overMenu">
								<dt>
									<h2>
										<a href="../reserve/reservepage" tabindex="-1">예매</a>
									</h2>
								</dt>
								<dd>
									<h3>
										<a href="../reserve/reservepage">빠른예매</a>
									</h3>
								</dd>
							</dl>
						</li>
						<li>
							<h2>
								<a href="#">스토어</a>
							</h2>
							<dl class="nav_overMenu">
								<dt>
									<h2>
										<a href="#" tabindex="-1">스토어</a>
									</h2>
								</dt>
								<dd>
									<h3>
										<a href="../product/pro_ticket">영화관람권</a>
									</h3>
								</dd>
								<dd>
									<h3>
										<a href="../product/pro_com">콤보</a>
									</h3>
								</dd>
								<dd>
									<h3>
										<a href="../product/pro_pop">팝콘</a>
									</h3>
								</dd>
							</dl>
						</li>
						<li>
							<h2>
								<a href="#">커뮤니티</a>
							</h2>
							<dl class="nav_overMenu">
								<dt>
									<h2>
										<a href="#" tabindex="-1">게시판</a>
									</h2>
								</dt>
								<dd>
									<h3>
										<a href="../board/list">자유게시판</a>
									</h3>
								</dd>
								<dd>
									<h3>
										<a href="../gongji/list">공지사항</a>
									</h3>
								</dd>
							</dl>
						</li>
						<li>
							<h2>
								<a href="#">혜택</a>
							</h2>
							<dl class="nav_overMenu" style="display: none;">
								<dt>
									<h2>
										<a href="#" tabindex="-1">혜택</a>
									</h2>
								</dt>
								<dd>
									<h3>
										<a href="../discount/discount_list">할인정보</a>
									</h3>
								</dd>
							</dl>
						</li>
					</ul>
					<!-- 시간부분 보류 -->
					<!-- <div id="clock"></div> -->
				</div>
			</div>
		</div>
		<!-- 서비스메뉴 종료 -->
		<decorator:body />
		<!-- 하단 회사정보 표기 -->
		<div class="end_content">
			<div class="end_outline">
				<div>
					경기 고양시 일산동구 중앙로 1193 마두법조빌딩 9층 이젠컴퓨터학원 <img alt="로고" src="../resources/img/CCA4.png"><p> 
					<br>
					제작인원 : 3명	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	대표이메일	:	trr456@naver.com<p>
					<br>
					제작자	:	김석근 박종국 김규호
				</div>
			</div>
		</div>
		<!-- 하단 회사정보 표기 종료-->
	</div>
<script>
/* const clock = document.querySelector("#clock");

function Time() {
    const date = new Date();

    const Hour = String(date.getHours()).padStart(2,0);
    const Minutes = String(date.getMinutes()).padStart(2,0);
    const Second = String(date.getSeconds()).padStart(2,0);
    
    clock.innerText = Hour+":"+Minutes+":"+Second;
}
	Time();
	setInterval(Time , 1000); */
</script>
</body>
</html>