<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<head>
<style>
section {
	width: 100%;
	height: 100%;
	margin: auto;
}
#contaniner {
    /* overflow: hidden; */
    position: relative;
    width: 100%;
    z-index: 7;
}
#contents {
    clear: both;
    /* padding-bottom: 50px; */
    position: relative;
    width: 980px;
    margin: 0 auto;
}
.sect-common {
    height: 450px;
    margin-top: 25px;
    overflow: hidden;
    width: 980px;
}
.favorite-wrap {
    position: relative;
    width: 874px;
    height: 400px;
    padding: 60px 53px 0;
    background: url(https://img.cgv.co.kr/r2014/images/common/bg/bg_showtimes_favorite.gif) no-repeat 0 0;
}
.favorite-wrap .sect-favorite {
    position: relative;
    width: 676px;
    height: 49px;
    padding-left: 198px;
}
.favorite-wrap .sect-favorite h4 {
    position: absolute;
    top: 14px;
    left: 260px;
    color: #ccc;
    padding: 0;
    font-size: 30px;
    zoom: 1;
    font-family: serif;
}
.favorite-wrap .sect-city {
    height: 42px;
    margin-top: 18px;
    border-top: 2px solid #727171;
    border-bottom: 2px solid #727171;
}
.favorite-wrap .sect-city > ul {
    position: relative;
}
.sect-city li {
    float: left;
    margin: 0 8px;
}
.favorite-wrap .sect-city > ul > li > a {
    padding: 0 19px;
    color: #dbdbdb;
    font-size: 14px;
    line-height: 42px;
    text-align: center;
}
.favorite-wrap .sect-city > ul .area {
    display: none;
    position: absolute;
    top: 50px;
    left: 10px;
    width: 854px;
}
.favorite-wrap .sect-city > ul > li * li {
    margin: 6px 25px 0 0;
}
.favorite-wrap .sect-city > ul > li * li > a {
    position: relative;
    padding: 0;
    font-size: 12px;
    color: #b9b9b9;
    line-height: 31px;
    text-align: left;
}
.favorite-wrap .sect-city .on > a {
    color: #fff !important;
}
</style>
</head>
<body>
	<section>
		<div id="contaniner">
			<div id="contents">
				<div class="sect-common">
					<div class="favorite-wrap">
						<div class="sect-favorite">
							<h4>CCA 에 오신걸 환영합니다.</h4>
						</div>
						<div class="sect-city">
							<ul>
								<li>
									<a href="#">덕양구</a>
									<div class="area">
										<ul>
											<li><a href="https://place.map.kakao.com/18333558">고양 화정점</a></li>
											<li><a href="https://place.map.kakao.com/905905961">고양 행신점</a></li>
											<li><a href="https://place.map.kakao.com/1482717636">고양 스타필드</a></li>
										</ul>
									</div>
								</li>
								<li>
									<a href="#">일산동구</a>
									<div class="area">
										<ul>
											<li><a href="https://place.map.kakao.com/407786827">백석 벨라시타</a></li>
											<li><a href="https://place.map.kakao.com/18512610">백석 롯데아울렛</a></li>
											<li><a href="https://place.map.kakao.com/8000717">일산 웨스턴돔</a></li>
											<li><a href="https://place.map.kakao.com/17736317">일산 라페스타</a></li>
										</ul>
									</div>
								</li>
								<li>
									<a href="#">일산서구</a>
									<div class="area">
										<ul>
											<li><a href="https://place.map.kakao.com/12545321">일산 킨텍스</a></li>
											<li><a href="https://place.map.kakao.com/18841396">일산 주엽점</a></li>
											<li><a href="https://place.map.kakao.com/8412892">일산 덕이점</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<script>
	let depth = document.querySelectorAll(".sect-city > ul > li");
	let areas = document.querySelectorAll(".sect-city > ul > li > .area");
	window.onload = () => {
		depth[0].classList.add("on");
		areas[0].style.display="block";
		areas[1].style.display="none";
		areas[2].style.display="none";
	}
	depth.forEach(function(item) {
		item.addEventListener('click',function() {
			depth.forEach((e) => {
				e.classList.remove("on");
				e.querySelector(".area").style.display="none";
			});
			item.classList.add("on");
			/* console.log(item.querySelector(".area")); */
			item.querySelector(".area").style.display="block";
		});
	});
</script>
</body>