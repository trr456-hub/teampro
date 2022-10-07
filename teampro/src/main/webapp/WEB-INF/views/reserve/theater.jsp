<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
<style>
section {
	width: 100%;
	height: 100%;
	margin: auto;
}
.theater {
	padding-top:50px;
	padding-bottom:50px;
	width:100%;
	background:#444;
}
.theater .theater-outline {
	position:relative;
	overflow:hidden;
	width:996px;
	margin:0 auto; 
	background:#fff
}
.theater .theater-outline .steps {
	position:relative;
	width:996px;
	background:#F2F0E4;
}
.steps .step {
	position:relative;
}
.steps .step2 {
	background-color:#d4d3c9;
	min-height:530px;
}
.step2 .seat-section {
	float:none;
	width:992px;
	min-height:528px;
	position:relative;
	height:100%;
	margin-left:2px;
	background-color:#f2f0e5;
	overflow:hidden;
}
.step2 .seat-section .col-head {
	background-image:url(../resources/img/titles.png);
	background-repeat:no-repeat;
	background-position:50% -124px;
	position:relative;
	height:33px;
	line-height:33px;
	text-align:center;
	background-color:#333333;
}
.step2 .seat-section .col-body {
	height:auto;
	width:100%;
	position:relative;
	overflow:hidden;
}
.step2 .seat-section .person-screen {
	position:relative;
	border-bottom:2px solid #d4d3c9;
	display:inline-block;
	padding:17px 0 3px 0;
	width:100%;
}
.step2 .seat-section .person-screen-son {
	float:left;
	width:460px;
	height:100%;
	position:relative;
	margin-left:2px;
	background-color:#f2f0e5;
	overflow:hidden;
}
.step2 .person-screen-son .col-bodyy {
	width:100%;
	position:relative;
	overflow:hidden;
}
.step2 .person-screen-son .human {
	min-width:426px;
	margin-left:15px;
	padding-right:18px;
	border-right:1px solid #d4d3c9;
	display:inline-block;
}
.step2 .human .max-human {
	padding-bottom:5px;
	text-align:right;
	font-size:11px !important;
	color:red;
}
.step2 .human .group {
	float:left;
	margin-bottom:8px;
	display:block;
}
.human .group .title {
	float:left;
	width:55px;
	height:22px;
	line-height:22px;
	color:#666;
	letter-spacing:-0.1em;
}
.human .group ul {
	float: left;
    width: auto;
    height: 22px;
    line-height: 22px;
    overflow: hidden;
}
.group ul li {
	width: 20px;
    height: 20px;
    line-height: 20px;
    border: 1px solid #d6d3ce;
    background-color: #f2f0e5;
    float:left;
    list-style:none;
    margin-right:6px;
}
.group ul li a {
	display: block;
    height: 100%;
    color: #333;
    font-family: Verdana;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
}
.person-screen .movie-info {
	float:left;
	display:block;
	width:500px;
	height:100%;
	overflow:visible;
	background:transparent;
	margin-top:1px;
	position:relative;
	margin-left:2px;
}
.person-screen .select-info > div {
	position: relative;
    height: 100%;
    letter-spacing: -1px;
}
.person-screen .select-info {
	width: auto;
    margin: 0 0 0 20px;
    position: relative;
    height: 100%;
    letter-spacing: -1px;
}
.select-info .theater-info span {
	font-size: 1.1em;
    padding: 0 11px 0 10px;
    border-right: 1px solid #ccc;
    max-width: 200px;
    height: 17px;
    display: inline-block;
    /* overflow: hidden; */
    white-space: nowrap;
    text-overflow: ellipsis;
}
.select-info .theater-info span:first-child {
	padding-left:0;
	max-width:150px;
}
.select-info .theater-info span:last-child {
	border:none;
	padding-right:0;
}
.theater-info .seatNum .restNum {
	color:#CA4D10;
}
.select-info .totalBuy {
	border:1px solid #666;
	font-weight: bold;
    font-size: medium;
    border-radius: 50%;
    background: #666;
    padding: 8px;
    color: #eee;
    margin-left: 10px;
    margin-top: -5px;
}
.movie-info .YMD-info {
	display: inline-block;
    line-height: 1.2em;
    margin-top: 12px;
    color: #5a5a5a;
    font-size:30px;
}
.movie-info .YMD-info b {
	display: block;
    float: left;
    line-height: 20px;
}
.col-body .theater-map {
	position:relative;
	width:auto;
	padding:20px;
}
.col-body .theater-map .theater-map-min {
	margin-left:20px;
	width:826px;
	height:365px;
	position:relative;
}
.theater-map .theater-map-min .theater-content {
	position:absolute;
	top:0;
	left:0;
	right:0;
	left:0;
	/* overflow:scroll; */
}
.theater-map .theater-content .theater-screen {
	height:25px;
	margin:0 auto;
	line-height:25px;
	text-align:center;
	background:url(../resources/img/screen_bg.png) repeat-x left;
}
.theater-content .theater-screen .theater-screen-text {
	width:57px;
	height:25px;
	display:inline-block;
	zoom:1;
	background:url(../resources/img/screen_text.png)no-repeat;
}
.theater-content .seats {
	position:relative;
	margin:56px auto; 40px; auto;
	height:auto;
}
.theater-content .seats .seat {
	width:20px;
	height:20px;
}
.clicked {
	background:#5E17EB;
	color:white;
}
.theater-map-min .legend {
	position:absolute;
	top:55px;
	right:0px;
	height:50%; 
}
.theater-map-min .legend .legend-icon {
	margin-left:5px;
	line-height:15px;
}
.icon {
	margin-top:0;
	background-position:0 0;
	position:absolute;
	top:0;
	left:0;
	display:block;
	width:15px;
	height:16px;
	padding:0;
	background:url(../resources/img/icon.JPG);
}
.icon2 {
	margin-top:0;
	background-position:0 0;
	position:absolute;
	top:0;
	left:0;
	display:block;
	width:15px;
	height:16px;
	padding:0;
	background:url(../resources/img/icon2.jpg);
}
.legend .legend-icon .icon-select{
	position:relative;
	display:block;
	margin-top:8px;
	padding-left:19px;
	height:15px;
	color:#666;
	font-size:12px;
}
.legend .legend-icon .icon-reserved{
	position: relative;
    display: block;
    margin-top: 8px;
    padding-left: 19px;
    height: 15px;
    color: #666;
    font-size: 12px;
    line-height:15px;
}
</style>
</head>
<body>
	<section>
	<form id="theater" name="theater" method="post" action="theaterBuy">
		<div class="theater">
			<div class="theater-outline">
				<div class="steps">
					<div class="step step2" style="display:block;">
						<div class="seat-section">
							<div class="col-head"></div>
							<div class="col-body">
								<div class="person-screen">
									<div class="person-screen-son">
										<div class="col-bodyy">
											<div class="human">
												<div class="max-human">* 최대 8명 선택 가능</div>
												<div class="group adult">
													<span class="title">일반</span>
													<ul>
														<c:forEach var="i" begin="0" end="8">
															<li onclick="adultClick(${i}, this); adultCheck(this); disableFal();">
																<a href="#none">${i}</a>
															</li>
														</c:forEach>
													</ul>
												</div>
												<div class="group child">
													<span class="title">청소년</span>
													<ul>
														<c:forEach var="i" begin="0" end="8">
															<li onclick="childClick(${i}, this); childCheck(this); disableFal();">
																<a href="#none">${i}</a>
															</li>
														</c:forEach>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="movie-info">
										<div class="select-info">
											<p class="theater-info">
												<span>
													<input name="title" value="${title}" readonly style="overflow: hidden; text-overflow: ellipsis; border: none; background: transparent; padding-bottom:6px;">
												</span>
												<c:if test="${jcode == 01}">
													<span class="site">고양 화정점</span>
												</c:if>
												<c:if test="${jcode == 02}">
													<span class="site">고양 행신점</span>
												</c:if>
												<c:if test="${jcode == 03}">
													<span class="site">고양 스타필드</span>
												</c:if>
												<c:if test="${jcode == 04}">
													<span class="site">백석 벨라시타</span>
												</c:if>
												<c:if test="${jcode == 05}">
													<span class="site">백석 롯데아울렛</span>
												</c:if>
												<c:if test="${jcode == 06}">
													<span class="site">일산 웨스턴돔</span>
												</c:if>
												<c:if test="${jcode == 07}">
													<span class="site">일산 라페스타</span>
												</c:if>
												<c:if test="${jcode == 08}">
													<span class="site">일산 킨텍스</span>
												</c:if>
												<c:if test="${jcode == 09}">
													<span class="site">일산 주엽점</span>
												</c:if>
												<c:if test="${jcode == 10}">
													<span class="site">일산 덕이점</span>
												</c:if>
												<span class="screen">${fn:substring(tcode,1,2)}관</span>
												<span class="seatNum">
													<b class="restNum">좌석수</b>
													/
													<b>90</b>
												</span>
											</p>
											<p class="YMD-info">
												<b>${fn:substring(monthday,0,4)} - ${fn:substring(monthday,4,6)} - ${fn:substring(monthday,6,8)}</b>
												<input type="button" value="결제하기" class="totalBuy" onclick="totalCheck()">
											</p>
										</div>
									</div>
								</div>
								<div class="theater-map">
									<div class=theater-map-min>
										<div class="theater-content" style="right:-17px; bottom:-17px;">
											<div class="theater-screen" style="width:652px;">
												<span class="theater-screen-text"></span>
											</div>
											<div class="seats" style="width:180px;height:200px;">
												<div class="seat-wrapper" onload="disableSeat()"></div>
											</div>
										</div>
										<div class="legend" style="width:125px;">
											<div class="legend-icon">
												<span class="icon-select">
													<span class="icon"></span>
													선택
												</span>
												<span class="icon-reserved">
													<span class="icon2"></span>
													예매완료
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<c:forEach items="${ylist}" var="yvo">
			<div class="yseat">${yvo.seatpass}</div>
		</c:forEach>
		<input id="adult" type="hidden" name="adult" value="0">
		<input id="child" type="hidden" name="child" value="0">
		<input id="seat" type="hidden" name="seatPass" value="">
		<input type="hidden" name="code" value="${code}">
		<input type="hidden" name="jcode" value="${jcode}">
		<input type="hidden" name="mcode" value="${mcode}">
		<input type="hidden" name="monthday" value="${monthday}">
		<input type="hidden" name="tcode" value="${tcode}">
		</form>
	</section>
<script>
	/* 좌석 2중for문 처리 */
	let test = [];
	let selectedSeats = new Array();
	let selectedSeatsMap = [];
	const seatWrapper = document.querySelector(".seat-wrapper");
	let clicked="";
	let div = "";
	
	var num = 0;	// 선택된 좌석 갯수를 저장하는 변수
	
	/* onload에서 사용할 변수 선언부분 */
	let addn = parseInt(document.getElementsByName("adult")[0].value);
	let chhn = parseInt(document.getElementsByName("child")[0].value);
	let yseat = document.querySelectorAll(".yseat");
	let eseat = document.querySelectorAll(".seat");
	
	// 예약된 좌석을 담는 배열
	let reservedSeat = new Array();
	
	let addchh = addn+chhn;
	let disableSeat = document.querySelectorAll(".seat"); // 좌석에 대한 전역변수
	/* console.log(disableSeat); */
	/* onload에서 사용할 변수 선언부분  End */
	
	/* onload부분 */
	window.onload = () => {
		adult[0].style.background="#333";
		adultA[0].style.color="white";
		child[0].style.background="#333";
		childA[0].style.color="white";
		
		/* for(i=0;i<90;i++) {
			disableSeat[i].setAttribute('disabled',true);
		} */
		 
		/* for(j=0; j<yseat.length; j++) {
			let yseatArr = yseat[j].innerText;
			let yseatArr_for = yseatArr.split(",");
			//console.log(yseatArr.split(","));
			for(w=0; w<yseatArr_for.length; w++) {
				//console.log(yseatArr_for[w]);
				//let yseatLen = yseatArr_for[w];
				reservedSeat.push(yseatArr_for[w]);
			}
		}
		console.log("reservedSeat:", reservedSeat); */
	}
	/* onload부분 종료*/
	for(k=0; k<yseat.length; k++) {
		var yseatArr = yseat[k].innerText;
		var yseatArr_for = yseatArr.split(",");
		for(w=0; w<yseatArr_for.length; w++) {
			reservedSeat.push(yseatArr_for[w]);
		}
	}
	//console.log(reservedSeat);
	
	for(let i=0; i<10; i++) {
		div = document.createElement("div");
		seatWrapper.append(div);
		for(let j=0; j<9; j++) {
			const input = document.createElement("input");
			input.type="button";
			input.name="seats";    
			input.classList="seat";
			
			// 3중for문 XXXX
			mapping(input, i, j);
			//console.log("input.value: ", input.value);
			
			// 예약됐는지 확인하는 조건
			for(rs=0; rs<reservedSeat.length; rs++) {
				if(input.value == reservedSeat[rs]) {
					input.disabled = true;
					console.log("reservedSeat: ", reservedSeat[rs]);
				}
			}
			
			div.append(input);
			input.addEventListener('click',function(e) {
				/* console.log(e.target.value); */
				//중복방지
				//selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);
				
				//toggle click클래스가 존재할때
				
				if(input.classList.contains("clicked")) {
					input.classList.remove("clicked");
					clicked = document.querySelector(".clicked");
					selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);	// 클릭한 좌석 선택 취소 (배열에서 삭제)
                    num--;
				//toggle click클래스가 존재 안할때
				} else {
					
					// 선택한 인원수보다 큰지 비교
					var inwon = getInwon();
					
					// 선택한 인원수와 선택한 좌석수 비교 (인원수 : inwon, 좌석수:num)
					if( num < inwon ) {
	                    selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);
						input.classList.add("clicked");
						clicked = document.querySelectorAll(".clicked");
						clicked.forEach((data) => {
							selectedSeats.push(data.value);
						})
						num++;
					} else {
						/* console.log("꽉참"); */
					}
				}
				console.log(selectedSeats);
				document.theater.seatPass.value=selectedSeats;
			})
		}
	}
	/* 좌석에 알파벳 분류 if처리 */
	function mapping(input, i, j) {
		if(i === 0) {
			input.value="A" + j;
		} else if(i === 1) {
			input.value="B" + j;
		} else if(i === 2) {
			input.value="C" + j;
		} else if(i === 3) {
			input.value="D" + j;
		} else if(i === 4) {
			input.value="E" + j;
		} else if(i === 5) {
			input.value="F" + j;
		} else if(i === 6) {
			input.value="G" + j;
		} else if(i === 7) {
			input.value="H" + j;
		} else if(i === 8) {
			input.value="I" + j;
		} else if(i === 9) {
			input.value="J" + j;
		}
		
	}
	
	
	/* 좌석에 알파벳 분류 if처리 종료*/
	/* 좌석 2중for문 처리 종료*/
	/* 좌석 인원선택 */
	function adultClick(n, my) { //어른인원
		const inin = document.querySelectorAll(".adult > ul > li");
		const inina = document.querySelectorAll(".adult > ul > li > a");
		//console.log(my.querySelector("a"));
		const myA = my.querySelector("a");
		
		for(i=0; i<inin.length; i++) {			
			inin[i].style.background="#f2f0e5";
			inina[i].style.color="#333";
		}
		my.style.background="#333";
		myA.style.color="white";
	}
	let adult = document.querySelectorAll(".adult > ul > li");
	let adultA = document.querySelectorAll(".adult > ul > li > a");
	let child = document.querySelectorAll(".child > ul > li");
	let childA = document.querySelectorAll(".child > ul > li > a");
	/* console.log(adult); */
	
	
	function childClick(nu, you) { //청소년인원
		const childIn = document.querySelectorAll(".child > ul > li");
		const childInA = document.querySelectorAll(".child > ul > li > a");
		
		const childMyA = you.querySelector("a");
		
		for(j=0;j<childIn.length;j++) {
			childIn[j].style.background="#f2f0e5";
			childInA[j].style.color="#333";
		}
		you.style.background="#333";
		childMyA.style.color="white";
	}
	
	/* value넘기기 */
	function adultCheck(n) {
		/* console.log(n.querySelector("a").innerText); */
		let adultVal = n.querySelector("a").innerText;
		document.theater.adult.value=adultVal;
		/* console.log(document.getElementsByName("adult")[0].value); */
		operatorTest();
	}
	function childCheck(n) {
		let childVal = n.querySelector("a").innerText;
		document.theater.child.value=childVal;
		/* console.log(document.getElementsByName("child")[0].value) */
		operatorTest();
	}
	
	function operatorTest() {		
		let ad = parseInt(document.getElementsByName("adult")[0].value);
		let ch = parseInt(document.getElementsByName("child")[0].value);
		
		let adch = ad+ch;
		
		/* console.log(adch); */
		if(adch > 8) {
			alert("8명이 넘습니다");
			location.reload();
		}
		// 선택한 인원수(성인+청소년)의 합을 선택할 좌석의 배열의 크기로 전달
		//console.log("adch:" + adch);
		//selectedSeats.length = adch;
		//console.log("selectedSeats 길이" + selectedSeats.length);		
	}
	// 인원수 반환 함수
	function getInwon() {
		let adultCnt = parseInt(document.getElementsByName("adult")[0].value);
		let childCnt = parseInt(document.getElementsByName("child")[0].value);
		
		let totalCnt = adultCnt + childCnt;
		return totalCnt;
	}
	/* value넘기기 종료 */
	/* 좌석 인원선택 종료*/
	/* 좌석 인원에맞게 체크 */
	function disableFal() {
		/* for(i=0;i<90;i++) {
			disableSeat[i].removeAttribute('disabled');
		} */
	}
	/* 좌석 인원에맞게 체크 종료*/
	/* submit 통합체크 */
	function totalCheck() {
		let adult = parseInt(document.querySelector("#adult").value);
		let child = parseInt(document.querySelector("#child").value);
		let seat = document.querySelector("#seat").value;
		let inwon = adult+child;
		
		/* console.log(selectedSeats.length); */
		
		if(inwon == 0) {
			alert("인원을 선택해 주세요");
		} else if(seat == "") {
			alert("좌석을 선택해 주세요");
 		} else if(inwon != selectedSeats.length) {
			 alert("좌석의 갯수가 틀립니다.")
		} else {
			if(confirm("결제페이지로 넘어가시겟습니까?"))
				document.querySelector("#theater").submit();
			else
				return false;
		}
	}
	/* submit 통합체크 종료*/
</script>
</body>