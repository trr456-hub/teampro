<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <style>
   section {
     width:100%;
     height:1300px;
     margin:auto;
     background:white;
   }
   section .sub {
     display:none;
     height:60px;
   }
   section table {
     width:800px;
   	 margin:auto;
/*      border-top:2px solid #cccccc;
     border-bottom:1px solid #cccccc; */
     border-bottom:1px solid #cccccc;
     padding:10px;
     margin-top:30px;
     
   }
   section table td {
     font-family:돋움;
     font-size:14px;
     height:24px;
   }
   section caption {
     text-align:left;
   }
   section #bae_table .bb {
     font-size:12px;
     font-weight:100;
     display:inline-block;
     width:80px;
     height:20px;
     border:1px solid blue;
     padding-top:2px;
     text-align:center;
     cursor:pointer;
   }
   section .submit {
     text-align:center;
     margin-top:40px;
   }
   section input[type=submit] {
     width:170px;
     height:40px;
     border:1px solid #7878E1;
     background:#7878E1;
     color:white;
     font-size:16px;
     border-radius:5px;
   }
   section h3 {
     text-align:left;
     font-weight:bold;
     padding-top: 65px;
     padding-bottom:0px;
     padding-left:9px;
   }
   section table caption {
    font-size:20px;
	line-height:30px;
   }
   
   section table #hline {
   	border-top: 2px solid #000;
   	border-bottom: 1.5px solid #eeeeee;
   }
   
   section #tb1 {
    padding: 29px 0 30px;
    border-top: 2px solid #000;
    border-bottom: 1px solid #000;
    text-align:left;
   }
 </style>
 <script>
  function change_sub(n) {
	  // 전부 숨기기
	  var sub=document.getElementsByClassName("sub");
	  var len=sub.length;
	  for(i=0;i<len;i++) {
		  sub[i].style.display="none";
	  }
	  
	  sub[n].style.display="table-row";
  }
 </script>
<title>Insert title here</title>
</head>
<body>
 <section>
  <form method="post" action="pro_gumae_ok">
   <table width="900" align="center">
     <caption> <h3 style="padding-top:60px;"> 구 매 정 보 </h3></caption>
     <tr style="height:50px;overflow: hidden; 
			    background-color: #fafafa;
			    "align="center">
       <td colspan="2" id="hline"> 상품명 </td>
       <td id="hline"> 단 가 </td>
       <td id="hline"> 구매수량 </td>
       <td id="hline"> 총 결제금액 </td>
     </tr>
     <c:set var="chongprice" value="0"/>
     <c:set var="cpcode" value=""/>
     <c:set var="csu" value=""/>
     <c:set var="cchong" value=""/>
    <c:forEach items="${list}" var="pvo">
     <tr height="110" align="center">
       <td> <img src="../resources/store/${pvo.pimg}" width="70" height="70" style="padding-top:10px;"></td> <!-- 상품그림 -->
       <td style="text-align:left;"> ${pvo.title} </td> <!-- 상품명 -->
       <td> <fmt:formatNumber value="${pvo.price}"/>원 </td> <!-- 단 가  -->
       <td> ${pvo.su} </td> <!-- 수 량 -->
       <td> <fmt:formatNumber value="${(pvo.price*pvo.su)}" pattern="#,###"/>원 </td> <!-- 총결제금액 -->
     </tr>
     <c:set var="chongprice" value="${chongprice+(pvo.price*pvo.su)}"/>
   
     <c:set var="cimsi" value="${Integer((pvo.price*pvo.su))}"/>
     
     <c:set var="cpcode" value="${cpcode+=pvo.pcode+=','}"/>  
     <c:set var="csu" value="${csu+=pvo.su+=','}"/>
     <c:set var="cchong" value="${cchong+=cimsi+=','}"/>
     
    </c:forEach>
     <c:set var="chongpay" value="${chongprice}"/>
   </table>
   
   <input type="hidden" name="pcode" value="${cpcode}">
   <input type="hidden" name="su_imsi" value="${csu}">
   <input type="hidden" name="chong_imsi" value="${cchong }">
                        <!-- 결제금액 -->
  <!-- 구매자 정보 -->
  <table width="900" align="center" id="tb1">
    <caption> <h3 style="padding-bottom:12px;"> 구매자 정보 </h3> </caption>
    <tr>
      <td width="100"> 이름 </td>
      <td> <input type="text" value="${mvo.name}" readonly> </td>
      <td> 전화번호 </td>
      <td> <input type="text" value="${mvo.phone}" readonly> </td>
    </tr>
  </table>
  <!-- 결제관련 -->
  <table width="900" align="center" id="tb1">
    <caption> <h3 style="padding-bottom:12px;"> 결제 정보 </h3> </caption>
    <%-- <tr>
      <td width="150"> 총 상품금액 </td>
      <td> <fmt:formatNumber value="${chongprice}"/>원 </td>
    </tr>
    <tr>
      <td> 총 결제금액 </td>
      <td> <fmt:formatNumber value="${chongpay}" pattern="#,###"/>원  </td>
    </tr> --%>
    <tr>
      <td rowspan="2"> 결제방법 </td>
      <td> 
         <input type="radio" name="sudan" value="0" checked onclick="change_sub(0)">계좌이체
         <input type="radio" name="sudan" value="1" onclick="change_sub(1)">신용/체크카드
         <input type="radio" name="sudan" value="2" onclick="change_sub(2)">휴대폰
      </td>
    </tr>
    <tr class="sub" style="display:table-row;">
      <td>
         *은행선택 
         <select name="bank">
           <option value="-1"> 선택 </option>
           <option value="0"> 신한은행 </option>
           <option value="1"> 우리은행 </option>
           <option value="2"> 국민은행 </option>
           <option value="3"> 하나은행 </option>
           <option value="4"> 농협은행 </option>
         </select>
      </td>
    </tr>
    <tr class="sub"> <!-- 신용/체크 -->
      <td> 
        * 카드선택 
        <select name="card">
          <option value="-1"> 선택 </option>
           <option value="0"> 신한카드 </option>
           <option value="1"> 우리카드 </option>
           <option value="2"> 국민카드 </option>
           <option value="3"> 하나카드 </option>
           <option value="4"> 농협카드 </option>
        </select> <br>
        * 할부기간 
         <select name="gigan">
          <option value="-1"> 선택 </option>
           <option value="0"> 일시불 </option>
           <option value="1"> 2개월 무이자 </option>
           <option value="2"> 4개월 무이자 </option>
           <option value="3"> 6개월 무이자 </option>
           <option value="4"> 12개월 부분무이자 </option>
        </select>
      </td>
    </tr>
    <tr class="sub"> <!-- 휴대폰 -->
      <td> 
       * 통신사 종류
         <select name="phone">
           <option value="-1"> 선택 </option>
           <option value="0"> SKT </option>
           <option value="1"> KT </option>
           <option value="2"> LG </option>
           <option value="3"> 그 외 </option>
         </select>
      </td>
    </tr>
  </table>
  <!-- 결제 버튼 -->
  <div class="submit"> <input type="submit" value="구매하기"> </div>
  </form>
 </section>
</body>
</html>