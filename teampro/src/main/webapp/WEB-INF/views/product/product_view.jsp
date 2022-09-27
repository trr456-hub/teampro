<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
   section {
     width:100%;
     height:900px;
     margin:auto;
     background:white;
   }
   section table {
   	 width:800px;
   	 margin:auto;
     border-top:2px solid #cccccc;
     border-bottom:1px solid #cccccc;
     padding:17px;
     margin-top:30px;
     
   }
   section table caption {
    font-size:20px;
	line-height:70px;
   }
   section table td {
     font-family:돋움;
     font-size:14px;
     height:24px;
     text-align:left;
     vertical-align: inherit;
     display: table-cell;
   }
   section h3 {
     text-align:left;
     font-weight:bold;
     padding-top: 10px;
     padding-left:6px;
   }
 </style>
</head>
<body>
  <section>
   <!-- 상품정보 --> 
   <table width="900" align="center">
   <caption> <h3 style="padding-top:100px;font-size:40px;color:#7878E1;text-align:center;letter-spacing :7px;">
   		구매완료
    </h3> </caption>
     <caption> <h3 style="padding-top:10px;"> 구매상품정보 </h3> </caption>
    <c:set var="chong" value="0"/>
    <c:forEach items="${list}" var="pvo">     
      <tr> 
       <td> <img src="../resources/img/${pvo.pimg}" width="80"> </td>
       <td> ${pvo.title} </td>
       <td> ${pvo.su}개 </td>
       <td> <fmt:formatNumber value="${pvo.price}" pattern="#,###"/> (개당) </td>
      </tr>
      <c:set var="chong" value="${chong+pvo.chong}"/>
     </c:forEach>
   </table>
   
   <!-- list에서 하나의 객체만 가져와서 pvo로 전달 -->
   <c:set var="pvo" value="${list.get(0)}"/> 
   <table width="900" align="center">
    <caption> <h3> 주문자 정보 </h3> </caption>
    <tr>
      <td width="150"> 이름 </td>
      <td> ${mvo.name} </td>
    </tr>
    <tr>
      <td> 이메일 </td>
      <td> ${mvo.email}</td>
    </tr>
    <tr>
      <td> 전화번호 </td>
      <td> ${mvo.phone} </td>
    </tr>
  </table>
   <!-- 결제정보 -->
   <table width="900" align="center">
      <caption> <h3> 결제정보 </h3> </caption>
     <c:if test="${pvo.sudan==0}">
      <c:set var="sudan" value="계좌이체"/>
     </c:if>
     <c:if test="${pvo.sudan==1}">
      <c:set var="sudan" value="신용/체크카드"/>
     </c:if>
     <c:if test="${pvo.sudan==2}">
      <c:set var="sudan" value="휴대폰결제"/>
     </c:if>  
     <tr>
      <td width="150"> 결제 수단 </td>
      <td> ${sudan}</td>
     </tr> 
     <tr>
      <td> 총결제 금액 </td>
      <td> <fmt:formatNumber value="${chong}" pattern="#,###"/>원 </td> 
     </tr>
   </table>
  </section>
</body>
</html>