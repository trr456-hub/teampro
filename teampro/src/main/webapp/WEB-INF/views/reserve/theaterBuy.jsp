<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<style>
	section {
		width:100%;
		height:100%;
		margin:auto;
	}
	.ccaWrap {
		padding-top:50px;
		padding-bottom:100px;
		width:100%;
		background:#F2F0E4;
	}
	.ccaWrap .ccaInner {
		position:relative;
		overflow:hidden;
		width:1000px;
		margin:0 auto; 
		background:#F2F0E4
	}
	.ccaWrap .ccaInner .cap {
		text-align:center;
		font-size:30px;
		margin-bottom:30px;
	}
	.ccaWrap .ccaInner .ccaTopTable {
		padding-left:35px;
	}
   section table {
     border-top:2px solid #cccccc;
     padding:10px;
   }
   section table td {
     font-family:돋움;
     font-size:14px;
     height:24px;
     padding-bottom:10px;
     text-align:left;
   }
   section table th {
		padding-bottom:10px;
   }
   section caption {
     text-align:left;
   }
   section .submit {
     text-align:center;
     margin-top:40px;
   }
   section input[type=submit] {
     width:200px;
     height:35px;
     border:1px solid #ccc;
     background:#5E17EB;
     color:white;
     font-size:16px; 
   }
	</style>
</head>
<body>
	<section>
		<div class="ccaWrap">
			<div class="ccaInner">
				<form method="post" action="theaterBuy_ok">
					<table align="center" class="ccaTopTable">
						<h2 class="cap">영 화 예 매</h2>
						<tr>
							<th>예매번호</th>
							<th>인원수</th>
							<th>총 결제금액</th>
							<th>좌석</th>
						</tr>
						<tr>
							<td>P${code}-${jcode}${mcode}-${monthday}-${tcode}</td>	<!-- 예매번호 -->
							<td>${adult + child}</td>	<!-- 인원수 -->
							<td></td>	<!-- 총결제금액 -->
							<td>${seatPass}</td>	<!-- 좌석 -->
						</tr>
					</table>
			        <!-- 결제금액 -->
					<!-- 구매자정보 -->
					<table align="center">
						<caption><h3>구매자 정보</h3></caption>
						<tr>
							<th width="150">이름 : </th>
							<td></td>
						</tr>
						<tr>
							<th>이메일 : </th>
							<td></td>
						</tr>
						<tr>
							<th>전화번호 : </th>
							<td></td>
						</tr>
					</table>
					<!-- 결제관련 -->
					<table align="center" border="0">
						<caption><h3>결제 정보</h3></caption>
						<tr>
							<th width="150">상품금액 : </th>
							<td></td>
						</tr>
						<tr>
							<th>할인금액 : </th>
							<td></td>
						</tr>
						<tr>
							<th>총 결제금액 : </th>
							<td></td>
						</tr>
						<tr>
							<th>적립금 : </th>
							<td></td>
						</tr>
						<tr>
							<th>결제정보 : </th>
							<td align="left">
								<input type="radio" name="sudan" value="0" checked onclick="change_sub(0)">계좌이체
								<input type="radio" name="sudan" value="1" onclick="change_sub(1)">신용/체크카드
								<input type="radio" name="sudan" value="2" onclick="change_sub(2)">휴대폰
							</td>
						</tr>
					</table>
					<div class="submit"><input type="submit" value="구매하기"></div>
				</form>
			</div>
		</div>
	</section>
</body>