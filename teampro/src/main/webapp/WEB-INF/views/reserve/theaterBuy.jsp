<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
	<style>
	section {
		width:100%;
		height:100%;
		margin:auto;
	}
	.ccaWrap {
		padding-top:50px;
		padding-bottom:60px;
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
     margin-bottom:40px;
   }
   section button {
     width:200px;
     height:35px;
     border:1px solid #ccc;
     background:#5E17EB;
     color:white;
     font-size:16px; 
   }
   #check_module {
	display:none;
   }
   #card_module {
   	display:none;
   }
   .button_window {
   	width:200px;
   	margin:0 auto;
   }
	</style>
</head>
<body>
<form name="theater" method="get" action="theaterBuy_ok">
	<section>
		<div class="ccaWrap">
			<div class="ccaInner">
				<input type="hidden" name="adult" value="${adult}">
				<input type="hidden" name="child" value="${child}">
				<input type="hidden" name="seatPass" value="${seatPass}">
				<input type="hidden" name="code" value="${code}">
				<input type="hidden" name="jcode" value="${jcode}">
				<input type="hidden" name="mcode" value="${mcode}">
				<input type="hidden" name="monthday" value="${monthday}">
				<input type="hidden" name="tcode" value="${tcode}">
				<input type="hidden" name="chong" value="${(6000*adult)+(4000*child)}">
				<input type="hidden" name="seatpass" value="${seatPass}">
				<input type="hidden" name="ytitle" value="${title}">
				
				<table align="center" class="ccaTopTable">
					<h2 class="cap">영 화 예 매</h2>
					<tr>
						<th style="width: 230px;">영화이름</th>
						<th>인원수</th>
						<th>성인</th>
						<th>청소년</th>
						<th>총 결제금액</th>
						<th>좌석</th>
					</tr>
					<tr>
						<td style="text-align:center;">${title}</td>	<!-- 영화이름 -->
						<td style="text-align:center;">${adult + child}</td>	<!-- 인원수 -->
						<td style="text-align:center;"><fmt:formatNumber value="${6000*adult}" pattern="#,###"/>원</td>	<!-- 성인가격 -->
						<td style="text-align:center;"><fmt:formatNumber value="${4000*child}" pattern="#,###"/>원</td>	<!-- 청소년가격 -->
						<td style="text-align:center;"><fmt:formatNumber value="${(6000*adult)+(4000*child)}" pattern="#,###"/>원</td>	<!-- 총결제금액 -->
						<td style="text-align:center;">${seatPass}</td>	<!-- 좌석 -->
					</tr>
				</table>
		        <!-- 결제금액 -->
				<!-- 구매자정보 -->
				<table align="center">
					<caption><h3>구매자 정보</h3></caption>
					<tr>
						<th width="150">이름 : </th>
						<td>${name}</td>
					</tr>
					<tr>
						<th>이메일 : </th>
						<td>${email }</td>
					</tr>
					<tr>
						<th>전화번호 : </th>
						<td>${fn:substring(phone,0,3)}-${fn:substring(phone,3,7)}-${fn:substring(phone,7,11)}</td>
					</tr>
				</table>
				<!-- 결제관련 -->
				<table align="center" border="0">
					<caption><h3>결제 정보</h3></caption>
					<tr>
						<th width="150">상품금액 : </th>
						<td><fmt:formatNumber value="${(6000*adult)+(4000*child)}" pattern="#,###"/>원</td>
					</tr>
					<tr>
						<th>할인금액 : </th>
						<td>0원</td>
					</tr>   
					<tr>
						<th>총 결제금액 : </th>
						<td><fmt:formatNumber value="${(6000*adult)+(4000*child)}" pattern="#,###"/>원</td>
					</tr>
					<tr>
						<th>결제정보 : </th>
						<td align="left">
							<input type="radio" name="sudan" value="0" onclick="change_sub(0)">신용/체크카드
							<input type="radio" name="sudan" value="1" onclick="change_sub(1)">카카오페이
						</td>
					</tr>
				</table>
				<div class="button_window">
					<div class="submit"><button id="nomal_module" type="button">결제하기</button></div>
					<div class="submit"><button id="check_module" type="button">결제하기</button></div>
					<div class="submit"><button id="card_module" type="button">결제하기</button></div>	
				</div>
			</div>
		</div>
	</section>
</form>
<!-- 카카오페이 데모 결제 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	$("#check_module").click(function () {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp35452464'); 
		IMP.request_pay({
			pg: 'kakaopay',
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),
			
			name: 'CCA영화관람권',
			// 결제창에서 보여질 이름
			amount: ${(6000*adult)+(4000*child)},
			// 가격 
			buyer_name: '${name}',
			buyer_tel : '${phone}',
			// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있다.
			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '결제 금액 : ' + rsp.paid_amount;
				document.theater.submit();
				// 결제 성공 시 정보는 form으로 전달
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	});
	
	$("#card_module").click(function () {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp35452464'); 
		IMP.request_pay({
			pg: 'html5_inicis',
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),
			
			name: 'CCA영화관람권',
			// 결제창에서 보여질 이름
			amount: ${(6000*adult)+(4000*child)},
			// 가격 
			buyer_name: '${name}',
			buyer_tel : '${phone}',
			// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있다.
			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '결제 금액 : ' + rsp.paid_amount;
				document.theater.submit();
				// 결제 성공 시 정보는 form으로 전달
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	});
	
	function change_sub(n) {
		let valsu = document.getElementsByName("sudan")[n].value;
		/* console.log(valsu); */
		if(valsu == 0) {
			document.querySelector("#check_module").style.display="none";
			document.querySelector("#card_module").style.display="block";
			document.querySelector("#nomal_module").style.display="none";
		} else if(valsu == 1) {
			document.querySelector("#check_module").style.display="block";
			document.querySelector("#card_module").style.display="none";
			document.querySelector("#nomal_module").style.display="none";
		}
	}
</script>
<!-- 카카오페이 데모 결제 종료-->
</body>