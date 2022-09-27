<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
   section {
     width:100%;
     height:100%;
     margin:auto;
     margin-top:50px;
     background:white;
   }
   section table {
    padding-bottom:100px;
   	width:800px;
   	margin:auto;
   }
  section tr:first-child td {
    height:40px;
    border-top:2px solid #cccccc;
  }
  section td {
    border-bottom:1px solid #cccccc;
    padding-top:7px;
    padding-bottom:7px;
  }
  section tr:last-child td {
    border-bottom:2px solid #cccccc;
  }
  section h3 {
     text-align:left;
     font-weight:bold;
     padding-top:50px;
     padding-bottom:15px;
     padding-left:9px;
   }
   section table caption {
    font-size:20px;
	line-height:30px;
   }
 </style>
</head>
<body>
  <section>
    <table width="980" align="center" cellspacing="0">
      <caption> <h3> 주 문 내 역</h3> </caption>
      <tr align="center" style="background: #fcfcfc;">
        <td> 주문 일자 </td>
        <td> 상품 </td>
        <td> 상품 제목 </td>
        <td> 수량 </td>
        <td> 결제 금액 </td>
      </tr>
      
     <c:forEach items="${list}" var="gvo">
      <tr align="center">
        <td> ${gvo.writeday} </td>
        <td> <img src="../resources/img/${gvo.pimg}" width="70" height="70"> </td>
        <td> ${gvo.title} </td>
        <td> ${gvo.su}개 </td>
        <td> <fmt:formatNumber value="${gvo.chong}" pattern="#,###"/>원 </td>
      </tr>
     </c:forEach> 
    </table>
  </section>
</body>
</html>