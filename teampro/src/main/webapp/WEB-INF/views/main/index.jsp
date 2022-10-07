<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

</head>
<body>
	<section>
		<!-- 메인광고 시작 -->
		<div id="background-img">
			<div id="out-line">
				<div id="in-line">
					<iframe width="1200" height="700"
						src="https://www.youtube.com/embed/-zabRKMQ88c?autoplay=1&mute=1&controls=0&modestbranding=1"  
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<strong>어벤저스:인피니티 워</strong> 
					<span id="spant1"> 어벤저스 는 타노스의 침공을 </span> 
					<span id="spant2"> 막을수 있을것인가!! </span>
				</div>
			</div>
		</div>
		<!-- 메인광고 종료 -->
		<!-- 영화순위 슬라이드 -->
		<div id="background_slide">
			<div id="out-line">
				<div class="movieChartFont">
					<div class="movieChartFont2">
						<h3>무비차트</h3>
					</div>
				</div>
				<div id="in-element">
					<c:set var="rank" value="1"/>
					<c:forEach items="${clist}" var="cvo">
						<div class="movieChart">
							<div class="movieImg">
								<img alt="${rank}" src="../resources/mimg/${cvo.pimg}"style="cursor: pointer;" 
								onclick="location='../cmovie/cmovie_content?mcode=${cvo.mcode}'">
								<div class="movie_rank">${rank}</div>
							</div>
							<div class="movieFont">
								<strong class="movieName">${ctitle}</strong>
							</div>
						</div>
					<c:set var="rank" value="${rank=rank+1}"/>
					</c:forEach>
				</div>
				<div class="button-next">
					<img alt="다음슬라이드" src="../resources/img/arrowR.png">
				</div>
				<div class="button-prev">
					<img alt="이전 슬라이드" src="../resources/img/arrowL.png">
				</div>
			</div>
		</div>
		<!-- 영화순위 슬라이드 종료 -->
		<!-- 기프트콘 관람권 판매 -->
		<div class="giftcon_wrap">
			<div class="contents">
				<ul class="giftcon_list_wrap">
					<li>
						<dl class='giftcon_list'>
							<dt>
								영화관람권
							</dt>
							<dd>
								<a href="../product/pro_content?pcode=0101">
									<div class='img_wrap'>
										<img src="../resources/store/CCV 영화관람권 img.jpg" alt='CGV 영화관람권'>
									</div>
									<div class='giftcon_info_wrap'>
										<span>CCA 영화관람권</span> <strong>6,000원</strong>
									</div>
								</a>
							</dd>
							<dd>
								<a href="../product/pro_content?pcode=0102">
									<div class='img_wrap'>
										<img src="../resources/store/CCV 골드클래스 img.jpg" alt='CGV 골드클래스'>
									</div>
									<div class='giftcon_info_wrap'>
										<span>CCA 골드클래스</span> <strong>20,000원</strong>
									</div>
								</a>
							</dd>
							<dd>
								<a href="../product/pro_content?pcode=0104">
									<div class='img_wrap'>
										<img src="../resources/store/4DX 관람권 img.jpg" alt='4DX관람권'>
									</div>
									<div class='giftcon_info_wrap'>
										<span>4DX관람권</span> <strong>9,000원</strong>
									</div>
								</a>
							</dd>
						</dl>
					</li>
					<li>
						<dl class='giftcon_list'>
							<dt>
								팝콘
							</dt>
							<dd>
								<a href="../product/pro_content?pcode=0201">
								<div class='img_wrap'>
										<img src="../resources/store/고소팝콘(L) img.jpg" alt='PACONNIE A형'>
									</div>
									<div class='giftcon_info_wrap'>
										<span>고소팝콘L</span> <strong>5,000원</strong>
									</div>
								</a>
							</dd>
							<dd>
								<a href="../product/pro_content?pcode=0202">
									<div class='img_wrap'>
										<img src="../resources/store/달콤팝콘(L) img.jpg" alt='PACONNIE B형'>
									</div>
									<div class='giftcon_info_wrap'>
										<span>달콤팝콘L</span> <strong>6,000원</strong>
									</div>
								</a>
							</dd>
							<dd>
								<a href="../product/pro_content?pcode=0203">
									<div class='img_wrap'>
										<img src="../resources/store/더블치즈팝콘(M) img.jpg" alt='PACONNIE C형'>
									</div>
									<div class='giftcon_info_wrap'>
										<span>더블치즈팝콘M</span> <strong>5,500원</strong>
									</div>
								</a>
							</dd>

						</dl>
					</li>
					<li>
						<dl class='giftcon_list'>
							<dt>
								콤보  
							</dt>
							<dd>
								<a href="../product/pro_content?pcode=0301">
									<div class='img_wrap'>
										<img src="../resources/store/CCV콤보 img.jpg" alt='CGV콤보'>
									</div>
									<div class='giftcon_info_wrap'>
										<span>CCA콤보</span> <strong>9,000원</strong>
									</div>
								</a>
							</dd>
							<dd>
								<a href="../product/pro_content?pcode=0302">
									<div class='img_wrap'>
										<img src="../resources/store/더블콤보 img.jpg" alt='더블콤보'>
									</div>
									<div class='giftcon_info_wrap'>
										<span>더블콤보</span> <strong>12,000원</strong>
									</div>
								</a>
							</dd>
							<dd>
								<a href="../product/pro_content?pcode=0303">
									<div class='img_wrap'>
										<img src="../resources/store/스몰세트 img.jpg" alt='스몰세트'>
									</div>
									<div class='giftcon_info_wrap'>
										<span>스몰세트</span> <strong>6,500원</strong>
									</div>
								</a>
							</dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
		<!-- 기프트콘 관람권 판매 종료-->
		</section>
		</body>