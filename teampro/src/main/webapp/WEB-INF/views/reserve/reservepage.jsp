<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<%-- <link href="${pageContext.request.contextPath}/resources/css/reserve.css" rel="stylesheet" type="text/css"> --%>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
/* 날짜 슬라이드 */
$(function(){
	$(".owl-prev").click(function() {
		$(".owl-stage").animate({
			"marginLeft" : "0px"
		}, 100, function() {
			$(".movie-date-wrapper").css("margin-left", "0px");
		});
	});
	$(".owl-next").click(function() {
		$(".owl-stage").animate({
			"marginLeft" : "-420px"
		}, 100, function() {
			$(".movie-date-wrapper").css("margin-left", "0px");
		});
	});
});
/* 날짜 슬라이드 종료 */
</script>
<style>
section {
	width: 100%;
	height: 100%;
	margin: auto;
}
#reserve_main {
	padding-top:70px;
	padding-bottom:70px;
	background:#444;
	width:100%;
}
#reserve_main .reserve-outline {
	position:relative;
	overflow:hidden;
	width:1202px;
	margin:0 auto;
	height:870px; 
	background:#fff
}
.reserve-outline .reserve-start {
	display:block;
	overflow:inherit;
	position:relative;
	width:1280;
	height:100%;
}
/* 지역선택*/
.reserve-start .reserve-area {
	width:351px;
	border-bottom:1px solid #DDD;
	position:relative;
	float:left;
	height:100%;
	box-sizing:border-box;
	bacground:#fff;
}
.reserve-area .group-top {
	overflow:hidden;
	position:relative;
	height:55px;
	line-height:55px;
	border-right:1px solid #222;
	text-align:center;
	background:#000;
}
.reserve-area .group-top .tit{
	font-size:18px;
	color:#fff;
}
.reserve-area .inner {
	overflow:hidden;
	height:815px;
	border-right:1px solid #ddd;
}
.reserve-area .inner .outer{
	position:relative;
	padding-top:61px;	
}
.inner .outer .active{
	display: list-item;
}
.reserve-area .active .tap_tit {
	height:61px;
	border-bottom:2px solid #111;
	color:#000;
	font-size:20px;
	/* border:none; */
	position:absolute;
	top:0;
	cursor:default;
}
.active .tap_tit sapn {
	vertical-align:top;
	white-space:nowrap;
}
.active .tap_con {
	overflow:inherit;
	position:relative;
	width:auto;
	height:auto;
}
.active .tap_con .tap_con2 {
	background-color: #F5F5F5;
	position:relative;
	height:100%;
}
.tap_con .tap_con2 ul {
	height:753px;
	min-height:90px;
}
.tap_con .tap_con2 ul li {
	padding:2px;
	border-bottom:none;
}
.depth1-active a{
	background:#fff url(../resources/img/check.png) no-repeat 150px 2px;
}
.depth2 .depth2-active {
	background:#fff url(../resources/img/check.png) no-repeat 150px 2px;
}
li .depth1 > a {
	display: block;
    position: relative;
    width: 175px;
    box-sizing: border-box;
    padding: 10px 16px;
    font-size: 16px;
    color:#000; 
}
.depth1 > a > em {
	font-size:10px;
	color:#666;
}
.depth1 .depth2 { 
	position: absolute;
    left: 175px;
    right: 0;
    top: 0;
    bottom: 0;
    background-color:#fff;
}
.depth2 > ul > li {
	padding: 2px;
    border-bottom: none;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 16px;
    position: relative;
}
.depth2 > ul > li > a {
	display:table-cell;
	overflow:hidden;
	padding:10px 16px;
	font-size:16px;
	vertical-align: middle;
	color: #000;
    text-decoration: none;
    cursor: pointer;
}
/* 지역선택종료 */
/* 영화선택 */
.reserve-start .movie_select {
	width:351px;
	background-color: #F8F8F8;
	position:relative;
	float:left;
	height:100%;
	box-sizing:border-box;
}
.movie_select .grop_top {
	overflow:hidden;
	position:relative;
	height:55px;
	line-height:55px;
	border-right:1px solid #222;
	text-align:center;
	background-color:#000;
}
.movie_select .grop_top .movie_name{
	font-size:18px;
	color:#fff;
}
.movie_select .inner {
	overflow:hidden;
	height:815px;
	border-right:1px solid #DDD;
}
.movie_select .inner .list_filter{
	overflow:hidden;
	position:relative;
	height:60px;
	padding:0 20px;
	border-bottom:1px solid #DDD;
	text-align:center;
}
.inner .list_filter .list_font {
	font-size:20px;
	color:#000; 
	padding:18px 20px;
}
.inner .movie_select .movie_select2{
	position:relative;
	overflow:visible;
	height:754px;
}
.movie_select .movie_select2 .movie_select3 {
	max-height:none;
	position:relative;
	overflow:hidden;
	height:100%;
	max-width:100%;
	outline:none;
	direction:ltr;
}
.movie_select2 .movie_select3 .movie_select4 {
	position:relative;
	top:0;
	left:0;
	padding-bottom:30px;
	overflow:hidden;
	width:auto;
	height:auto;
}

.movie_select4 ul li {
	box-sizing:border-box;
	border:2px solid transparent;
}
.movie_select4 .movie-active {
	background:#fff;
}
.movie-active a {
	background:url(../resources/img/check.png) no-repeat 320px 15px;
}

.movie_select4 ul li > a {
	padding:15px 20px;
	position:relative;
	display:block;
	box-sizing:border-box;
	color: #000;
    text-decoration: none
} 
.movie_select4 .group_infor {
	float:left;
}
.age_in {
	display:inline-block;
	width:22px;
	height:22px;
	line-height:22px;
	border-radius:50%;
	font-size:14;
	text-align:center;
	vertical-align:middle;
	font-weight:bold;
}
.age_all {
 	background-color: #5BC77E;
}
.age_12 {
	background-color: #4DD6FF;
}
.age_15 {
	background-color: #FFC134;
}
.age_19 {
	background-color: #ED4C6B;
}
.bx_tit .age_in { 
	position:absolute;
	left:20px;
	top:12px;
	margin-right:5px;
}
.bx_tit .tit {
	display:block;
	overflow:hidden;
	width:250px;
	padding-left:30px;
	white-space:nowrap;
	text-overflow:ellipsis;
	font-size:15px;
	vertical-align:middle;
	font-weight:bold;
}
/* 영화선택 종료 */
/* 날짜 및 시간선택 */
.reserve-start .tiktok-main {
	width:500px;
	position:relative;
	float:left;
	height:100%;
	box-sizing:border-box;
	background-color: #fff;
}
.reserve-start .grop_top {
	overflow:hidden;
	position:relative;
	height:55px;
	line-height:55px;
	border-right:1px solid #222;
	text-align:center;
	background-color: #000;
}
.reserve-start .grop_top .tit{
	font-size:18px;
	color:#fff;
}
.tiktok-main .inner {
	overflow:hidden;
	height:815px;
}
.tiktok-main .inner .calendar_slt {
	height:75px;
	margin:22px 20px 10px;
}
.tiktok-main .inner .calendar_slt_inner {
	padding:0 20px;
	position:relative;
}
.inner .calendar_slt_inner .stage_outer {
	display:block;
	position:relative;
	width:auto;
	margin:0 auto;
	padding:0;
	list-style:none;
	z-index:1;
}
.inner .stage_outer .owl-stage-outer {
	position:relative;
	overflow:hidden;
	/* border:none; */
}
.inner .stage_outer .owl-nav {
	position:static;
	right:auto;
	top:50%;
	height:15px;
	margin:-10px;
	left:0;
	text-align:center;
}
.inner .time_view {
	width:500px;
	padding-top:80px;
	position:relative;
}
.inner .time_view .active{
	display:list-item;
}
.inner .time_view .tap_tit{
	width:100%;
	font-size:13px;
	border-bottom:2px solid #DDD;
	color:#000;
	height:50px;
	line-height:50px;
	position:absolute;
	top:0;
	background-color:#fff;
}
.time_view .tap_tit span {
	vertical-align:top;
	white-space:nowrap;
	position:relative;
	font-size:17px;
	color:#000;
	line-height:50px;
}
.time_view .active .list_view {
	overflow: inherit;
    position: relative;
    width: auto;
    height: auto;
    margin-top: -30px
}
.time_view .active .list_view2 {
	position:relative;
	overflow:visible;
	height:658px;
	padding:0 20px;
}
.time_view .active .list_view3 {
	max-height:none;
	position:relative;
	overflow:hidden;
	height:100%;
	max-width:100%;
	outline:none;
	direction: ltr;
}
.time_view .active .list_view4 {
	position:relative;
	top:0;
	left:0;
	padding-bottom:30px;
	margin-right:0;
	overflow:hidden;
	width:auto;
	height:auto;
}
.active .list_view5 {
	margin-top:30px;
	direction:ltr;
}

.active .list_view5 strong {
	font-weight:bold;
	font-size:15px;
	color:#000;
}

.list_view5 .time-selector {
	margin-top:20px;
}

.time-selector .list_hall {
	margin-left:10px;
}

.time-selector .list_time {
	margin-top:13px;
	display:inline-block;
	/* overflow:hidden; */
}

.movie-times {
	border:1px solid #000;
	border-radius: 4px;
}

.time-selector .list_time li {
	margin-left:0;
	float:left;
	width:22.5%;
	margin:0 0 11px 2%;
	/* border: 1px solid #ddd; */
}

.time-selector .list_time a {
	display: block;
    position: relative;
    height: 40px;
    padding: 8px 14px 5px;
    border-radius: 4px;
    border: 1px solid #ddd;
    cursor: pointer;
}

.list_time a .time {
	margin-bottom: 5px;
    font-family: 'Roboto';
    font-size: 11px;
}

.list_time .time strong {
	display: block;
    font-size: 15px;
    font-weight: bold;
    text-align: center;
}

.list_time a .seat {
	font-family: 'Roboto';
    font-size: 11px;
    color: #666;
}

.list_time .seat strong {
	font-size:13px;
	margin-left:10px;
}

.list_time a .hall {
	position: absolute;
    right: 14px;
    bottom: 8px;
    font-size: 11px;
}


.time_view .active .list_view5 p {
	line-height:1.5;
	font-size:15px;
	margin:0;
	padding:0;
}

.inner .stage_outer .owl-stage {
	transform:translate3d(0px,0px,0px);
	transition:all 0.4s ease 0s;
	width:2200px;
	position:relative;
}
.owl-stage-outer .owl-stage .movie-date-wrapper {
	width:52.5px;
	position: relative;
    float: left;
    display: block;
    min-height: 1px;
    padding-top:20px;
    outline: none;
}
.owl-stage .movie-date-wrapper-active .movie-day{
	fomt-weight:bold;
	color:#fff;
	background:#000 
}
.owl-stage .movie-date-wrapper .movie-day {
	display: block;
    width: 30px;
    height: 30px;
    line-height: 30px;
    margin: 0 auto;
    border-radius: 50%;
    font-family: 'Roboto';
    font-size: 15px;
    text-align: center;
    font-weight: bold;
}
.owl-stage .movie-date-wrapper .movie-week-of-day {
	display: block;
    margin-top: 3px;
    font-size: 12px;
    text-align: center;
}


.owl-stage-outer .owl-stage .movie-nextDate-wrapper {
	width:52.5px;
	position: relative;
    float: left;
    display: block;
    min-height: 1px;
    padding-top:20px;
    outline: none;
}
.owl-stage .movie-date-wrapper-active .movie-nextDay{
	fomt-weight:bold;
	color:#fff;
	background:#000 
}
.owl-stage .movie-nextDate-wrapper .movie-nextDay {
	display: block;
    width: 30px;
    height: 30px;
    line-height: 30px;
    margin: 0 auto;
    border-radius: 50%;
    font-family: 'Roboto';
    font-size: 15px;
    text-align: center;
    font-weight: bold;
}
.owl-stage .movie-nextDate-wrapper .movie-week-of-day {
	display: block;
    margin-top: 3px;
    font-size: 12px;
    text-align: center;
}



.owl-stage .movie-date-wrapper .saturday {
	color: #233CA3;
}
.owl-stage .movie-date-wrapper .sunday {
	color: #F24A6A;
}
.owl-stage .movie-nextDate-wrapper .saturday {
	color: #233CA3;
}
.owl-stage .movie-nextDate-wrapper .sunday {
	color: #F24A6A;
}
.owl-stage .movie-date-wrapper:first-child >.month-top {
	display:block;
}
.owl-stage .movie-nextDate-wrapper:first-child >.nextMonth-top {
	display:block;
}
.owl-stage .movie-date-wrapper .month-top {
	font-weight:bold;
	position:absolute;
	top:0;
	left:0;
	width:100%;
	text-align:center;
	font-size:10px;
	color:#000;
	display:none; 
}
.owl-stage .movie-nextDate-wrapper .nextMonth-top {
	font-weight:bold;
	position:absolute;
	top:0;
	left:0;
	width:100%;
	text-align:center;
	font-size:10px;
	color:#000;
	
	}
.owl-nav .owl-prev {
	opacity: .6;
    position: absolute;
    right: 400px;
    top: 50%;
    width: 37px;
    height: 39px;
    margin-top: -20px;
    background: url(../resources/img/arrowL.png) no-repeat center center;
    background-color: transparent;
    color: inherit;
    border: none;
    padding: 0 !important;
    font: inherit;
}
.owl-nav .owl-next {
	opacity: .8;
    position: absolute;
    right: -15px;
    top: 50%;
    width: 37px;
    height: 39px;
    margin-top: -20px;
    background: url(../resources/img/arrowR.png) no-repeat center center;
    background-color: transparent;
    color: inherit;
    border: none;
    padding: 0 !important;
    font: inherit;
}
/* 날짜 및 시간선택 종료 */
</style>
</head>
<body>
	<section>
	<form id="useSubmit" method="get" action="theater" name="reserve1">
		<input type="hidden" name="code" value="">
		<input type="hidden" name="jcode" value="">
		<input type="hidden" name="mcode" value="">
		<input type="hidden" name="monthday" value="">
		<input type="hidden" name="tcode" value="">
		<input type="hidden" name="title" value="">
	
		<div id="reserve_main">
			<div class="reserve-outline">
				<div class="reserve-start">
					<!-- 지역선택 -->
					<div class="reserve-area">
						<div class="group-top">
							<h4 class="tit">지역 선택</h4>
						</div>
						<div class="inner">
							<ul class="outer">
								<li class="active">
									<button type="button" class="tap_tit" style="width:100%; left:0%;">
										<span>전체</span>
									</button>
									<div class="tap_con">
										<div class="tap_con2">
											<ul>
												<c:set var="i" value="0" />
												<c:forEach items="${dlist }" var="dvo">
												<li class="depth1" onclick="check(${i})">
													<a href="#none">	<!-- 지역선택 -->
														${dvo.title}
														<em>	<!-- 지역영화관개수 -->
														(${dvo.ele})
														</em>
													</a>
													<div class="depth2">	<!-- 지역 세부선택 -->
														<ul>
															<c:set var="n" value="1" />
															<c:forEach items="${jlist}" var="jvo">
																<c:if test="${dvo.code == jvo.daecode}">
																	<li onclick="jungcheck(${n}); jungTxt(this);"><a href="#none">${jvo.title}</a></li>
																</c:if>
																<c:set var="n" value="${n=n+1}" />
															</c:forEach>
														</ul>
													</div>
													<c:set var="i" value="${i=i+1}" />
												</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!-- 지역선택 종료 -->
					<!-- 영화선택 -->
					<div class="movie_select">
						<div class="grop_top">
							<h4 class="movie_name">영화 선택</h4>
						</div>
						<div class="inner">
							<div class="list_filter">
								<h4 class="list_font">영화 인기순</h4>
							</div>
							<div class="movie_select">
								<div class="movie_select2">
									<div class="movie_select3">
										<div class="movie_select4">
											<ul>	<!-- 영화 list 영역 -->
											<c:set var="w" value="1"/>
											<c:forEach items="${rlist}" var="rvo">
												<li>
													<a href="#none" style="height:48px;" onclick="moviecheck(${w}); movieChange(this);">
														<div class="group_infor">
															<div class="bx_tit">
																<span class="age_in age_12">${rvo.age}</span>
																<strong class="tit">${rvo.title}</strong>
															</div>
														</div>
													</a>
												</li>
											<c:set var="w" value="${w=w+1}"/>
											</c:forEach>
											</ul>	<!-- 영화 list 영역 종료 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 영화선택 종료 -->
					<!-- 날짜 및 시간선택 -->
					<div class="tiktok-main">
						<div class="grop_top">
							<h4 class="tit">날짜 선택</h4>
						</div>
						<div class="inner">		<!-- 달력 표기 영역 -->
							<div class="calendar_slt">
								<div class="calendar_slt_inner">
									<ul class="stage_outer">
										<div class="owl-stage-outer">
											<div class="owl-stage">
											
											</div>
										</div>
										<div class="owl-nav">
											<button type="button" class="owl-prev">
												<span></span>
											</button>
											<button type="button" class="owl-next">
												<span></span>
											</button>
										</div>
									</ul>
								</div>
							</div>
							<ul class="time_view">
								<li class="active">
									<button type="button" class="tap_tit">
										<span>시청 시간 선택</span>
									</button>
									<div class="list_view">
										<div class="list_view2">
											<div class="list_view3">
												<div class="list_view4">
													<div class="list_view5">
														<div class="movie-name">
															<span class="age_in"></span>
															<strong>영화를 선택하세요</strong>
														</div>
														<div class="time-selector">
															<ul class="time-selector list_hall">
																<li>2D</li>
															</ul>
															<ul class="time-selector list_time">
															<c:set var="t" value="1"/>
															<c:forEach items="${slist }" var="svo">
																<li>
																	<a role="button" href="#none" onclick="colorChange(this); timePass(${t}); submitTime()">
																		<dl>
																			<dd class="time">
																				<strong>${svo.title}</strong>
																			</dd>
																			<dd class="seat">
																				<strong>56/${svo.people}</strong>
																			</dd>
																			<dd class="hall">
																				1관
																			</dd>
																		</dl>
																	</a>
																</li>
																<c:set var="t" value="${t=t+1}"/>
															</c:forEach>
															</ul>
														</div>
													</div>									
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!-- 날짜 및 시간선택 종료 -->
				</div>
			</div>
		</div>
		</form>
	</section>
	<script>
        const date = new Date();
        // console.log(date.getFullYear());
        const lastDay = new Date(date.getFullYear(), date.getMonth()+1 , 0);
        const nextDay = new Date(date.getFullYear(), date.getMonth()+2 , 0);
        const reserveDate = document.querySelector(".owl-stage");
		const nextDate = document.querySelector(".owl-stage");
		const fir = document.getElementsByClassName(".owl_stage").firstChild;
		
        const weekOfDay = ["일", "월", "화", "수", "목", "금", "토"]
        const year = date.getFullYear();
        const month = date.getMonth()+1;
        const nextMonth = date.getMonth()+2;
        const day = date.getDate();
        
        /* 현재날짜부터 현재 월 에 for문 처리 */
        for (i = day; i <= lastDay.getDate(); i++) {

            const button = document.createElement("button");
            const spanDay = document.createElement("span");
            const spanWeekOfDay = document.createElement("span");
            const fir = document.createElement("div");

            //class넣기
            button.classList = "movie-date-wrapper";
            spanDay.classList = "movie-day";
            spanWeekOfDay.classList = "movie-week-of-day";
            fir.classList = "month-top";

            //weekOfDay[new Date(현재날짜)]
            const dayOfWeek = weekOfDay[new Date(year + "-" + month + "-" + i).getDay()];
            
            //요일 넣기
            if (dayOfWeek === "토") {
                spanWeekOfDay.classList.add("saturday");
                spanDay.classList.add("saturday");
            } else if (dayOfWeek === "일") {
                spanWeekOfDay.classList.add("sunday");
                spanDay.classList.add("sunday");
            }
            // firstChild month넣기
            fir.innerHTML = (month+"월");
            button.append(fir);
            //날짜 넣기
            spanDay.innerHTML = i;
            button.append(spanDay);
            
            spanWeekOfDay.innerHTML = dayOfWeek;
            button.append(spanWeekOfDay);
            
            //button.append(i);
            button.setAttribute('type', 'button');
            
            button.setAttribute('onclick','datePass(this)');
            
            reserveDate.append(button);
            
           	//console.log(lastDay);
            dayClickEvent(button);
        }
        /* 이벤트 value값 전달 온클릭 추가 */
        function datePass(ddd) {
        	//console.log(ddd);
        	let day = ddd.querySelector('.movie-day').innerText;
        	document.reserve1.monthday.value=year+""+month+""+day;
        	
        	document.querySelector(".grop_top > .tit").innerText=year+"-"+month+"-"+day;
        	return false;
        }
        /* 이벤트 value값 전달 온클릭 추가 종료 */
        
        /* console.log(year+""+month+""+day); */
        /* 클릭 클래스리스트 추가 */
        function dayClickEvent(button) {
            button.addEventListener("click", function() {
                const movieDateWrapperActive = document.querySelectorAll(".movie-date-wrapper-active");
                movieDateWrapperActive.forEach((list) => {
                    list.classList.remove("movie-date-wrapper-active");
                });
                button.classList.add("movie-date-wrapper-active");
            });
        }
        /* 클릭 클래스리스트 추가 종료*/
        
        /* 현재날짜부터 현재 월 에 for문 처리 종료*/
           /* 다음달 1일부터 말일까지 for문 처리 */
		for (i = 1; i <= nextDay.getDate(); i++) {

            const button2 = document.createElement("button");
            const spanDay2 = document.createElement("span");
            const spanWeekOfDay2 = document.createElement("span");
            const fir2 = document.createElement("div");
    			
            //class넣기
            button2.classList = "movie-nextDate-wrapper";
            spanDay2.classList = "movie-nextDay";
            spanWeekOfDay2.classList = "movie-week-of-day";
            fir2.classList = "nextMonth-top";

            //weekOfDay[new Date(현재날짜)]
            const dayOfWeek2 = weekOfDay[new Date(year + "-" + nextMonth + "-" + i).getDay()];
            
            //요일 넣기
            if (dayOfWeek2 === "토") {
                spanWeekOfDay2.classList.add("saturday");
                spanDay2.classList.add("saturday");
            } else if (dayOfWeek2 === "일") {
                spanWeekOfDay2.classList.add("sunday");
                spanDay2.classList.add("sunday");
            }
            // firstChild month넣기
            fir2.innerHTML = (nextMonth+"월");
            button2.append(fir2);
            //날짜 넣기
            spanDay2.innerHTML = i;
            button2.append(spanDay2);
            
            spanWeekOfDay2.innerHTML = dayOfWeek2;
            button2.append(spanWeekOfDay2);
            
            //button.append(i);
            button2.setAttribute('type', 'button');
            button2.setAttribute('onclick','datePass2(this)')
            
            nextDate.append(button2);
            
            nextDayClickEvent(button2);
        }
		/* 이벤트 value값 전달 온클릭 추가 */
		function datePass2(sss) {
			let nextDay = sss.querySelector(".movie-nextDay").innerText;
			document.reserve1.monthday.value=year+""+nextMonth+""+nextDay;
			
			document.querySelector(".grop_top > .tit").innerText=year+"-"+nextMonth+"-"+nextDay;
		}
		/* 이벤트 value값 전달 온클릭 추가 종료 */
		/* 클릭 클래스리스트 추가 */
		function nextDayClickEvent(button2) {
            button2.addEventListener("click", function() {
                const movieDateWrapperActive = document.querySelectorAll(".movie-date-wrapper-active");
                movieDateWrapperActive.forEach((list) => {
                    list.classList.remove("movie-date-wrapper-active");
                });
                button2.classList.add("movie-date-wrapper-active");
            });
        }
		/* 클릭 클래스리스트 추가 종료*/
           /* 디음달 1일부터 말일가지 for문 처리 종료 */
        
        /* 지역선택 */
   		let depth = document.querySelectorAll(".depth1");
        window.onload = () => {  //index[0] 번의 값을 넣어주기
        	depth[0].classList.add("depth1-active");
        	document.getElementsByClassName("depth2")[0].style.display="block";
			document.getElementsByClassName("depth2")[1].style.display="none";
			document.getElementsByClassName("depth2")[2].style.display="none";
        }
       	depth.forEach(function(item) {
       		item.addEventListener('click',function() {
       			depth.forEach((e) => {
       				e.classList.remove("depth1-active");
       			});
       			item.classList.add("depth1-active");
       			/* alert("야발련아") */
       		});
       	});
       	/* console.log(depth.includes("depth1-active")); */
       	
       	let depth2 = document.querySelectorAll(".depth2 > ul > li");
       	depth2.forEach(function(tem){
       		tem.addEventListener('click',function(){
       			depth2.forEach((r) => {
       				r.classList.remove("depth2-active");
       			});
       			tem.classList.add("depth2-active");
       		});
       	});
       	
       	function check(n) {
       			if(n==0) {
       				document.getElementsByClassName("depth2")[0].style.display="block";
       				document.getElementsByClassName("depth2")[1].style.display="none";
       				document.getElementsByClassName("depth2")[2].style.display="none";
       			}
       			if(n==1) {
       				document.getElementsByClassName("depth2")[0].style.display="none";
       				document.getElementsByClassName("depth2")[1].style.display="block";
       				document.getElementsByClassName("depth2")[2].style.display="none";
       			}
       			if(n==2) {
       				document.getElementsByClassName("depth2")[0].style.display="none";
       				document.getElementsByClassName("depth2")[1].style.display="none";
       				document.getElementsByClassName("depth2")[2].style.display="block";
       			}
       			
       			document.reserve1.code.value="004"+n;  // 0040 , 0041 , 0042 daearea 선택
       	}
       	function jungcheck(n) {
       		if(n < 10) {
       			document.reserve1.jcode.value = "0"+n;
       		}else {
       			document.reserve1.jcode.value = n;
       		}
       	}
       	function jungTxt(i) {
       		var jungTxt = i.querySelector(".depth2 > ul > li > a").innerText;
       		/* console.log(jungTxt); */
       		document.querySelector(".tit").innerText=jungTxt;
       	}
        /* 지역선택 종료 */
        /* 영화선택 */
        let movie_on = document.querySelectorAll(".movie_select4 > ul > li");
        movie_on.forEach(function(ele){
        	ele.addEventListener('click',function(){
        		movie_on.forEach((mve) => {
        		mve.classList.remove("movie-active");
        		});
        		ele.classList.add("movie-active");
        	});
        });
        
        function moviecheck(w) {
        	if(w < 10)
        		document.reserve1.mcode.value="0"+w;
        	else
        		document.reserve1.mcode.value=w;
        }
        
        function movieChange(m) {
        	let mname = m.querySelector(".tit").innerText;
        	let ageBck = document.querySelector(".movie-name > .age_in");
        	let mage = m.querySelector(".age_in").innerText;
        	document.querySelector(".movie-name > strong").innerText=mname;
        	document.querySelector(".movie_name").innerText=mname;
        	document.querySelector(".movie-name > span").innerText=mage;
        	document.reserve1.title.value=mname;
        	/* console.log(mname); */
        	 if(mage == "all") {
        		ageBck.classList.add("age_all");
        	} else if(mage == "12") {
        		ageBck.classList.add("age_12");
        	} else if(mage == "15") {
        		ageBck.classList.add("age_15");
        	} else if (mage == "19") {
        		ageBck.classList.add("age_19");
        	} 
        }
        
        /* 영화선택 종료*/
        /* 시간선택 */
        function colorChange(my) {
        	//console.log(my);
        	let movie_time_a = document.querySelectorAll(".time-selector .list_time > li > a");
        	//console.log(movie_time_a);
        	for(var i=0; i<movie_time_a.length; i++) {
	        	movie_time_a[i].style.borderColor = "#ddd";
        	}
        	my.style.borderColor = "black";
        }
        function timePass(t) {
        	document.reserve1.tcode.value="0"+t;
        }
        function submitTime() {
        	if(confirm("좌석 선택으로 이동합니다.")) {
        	document.querySelector("#useSubmit").submit();
        	} else {
        		return false;	
        	}
        }
        /* 시간선택 종료 */
        
    </script>
</body>