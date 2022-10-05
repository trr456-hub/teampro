<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
     width:100%;
     height:1000px;
     margin:auto;
     background:white;
   }
   section table {
   	width:800px;
   	margin:auto;
   	align:center;
   }
   section tr:first-child td {
     border-top:2px solid #cccccc;
   }
   section td {
     border-bottom:1px solid #cccccc;
     height:40px;
   }
   section tr:last-child td {
     border-bottom:2px solid #cccccc;
   }
   section a {
     text-decoration:none;
     color:black;
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
      <table width="700" align="center" cellspacing="0">
        <caption> <h3> 관리자용 상담 목록 </h3> </caption>
        <tr>
          <td> 사용자 </td>
          <td> 제 목 </td>
          <td> 작성일 </td>
          <td> 답변여부 </td>
        </tr>
       <c:forEach items="${clist}" var="cvo">
        <tr>
          <td> ${cvo.userid} </td>
          <td> <a href="ccontent?id=${cvo.id}"> ${cvo.title} </a></td>
          <td> ${cvo.writeday} </td>
         <c:if test="${cvo.cnt == 0}">
          <td> 답변 미작성 </td>
         </c:if>
         <c:if test="${cvo.cnt == 1}">
          <td> 답변 완료 </td>
         </c:if>
        </tr>
       </c:forEach> 
        
      </table>
    
   </section>
</body>
</html>