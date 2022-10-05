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
     height:900px;
     margin:auto;
     background:white;
     padding-top:30px;
   }
   section div  {
     width:400px;
     height:30px;
     margin:auto;
     display:flex;
     align-items:center;
     justify-content:center;
     margin-top:20px;
   }
   section #forth {
    border:1px solid #cccccc;
     width:386px;
     height:200px;
     align-items:flex-start;
     justify-content:flex-start;
     padding:6px;
     overflow:auto;
   }
   section div:first-child {
     font-size:22px;
     font-weight:900;
   }
   section div:nth-child(2) {
     border:1px solid #cccccc;
     
   }
   section div:nth-child(3) {
     border:1px solid #cccccc;
     width:386px;
     height:200px;
     align-items:flex-start;
     justify-content:flex-start;
     padding:6px;
     overflow:auto;
   }
   section div:last-child {
     margin-top:0px;
   }    
   section input[type=button]  {
     width:250px;  
     height:35px;   
     background:#5E17EB;
     border:1px solid #5E17EB;
     color:white;
   }
   section input[type=button]:nth-child(2)  {
     margin-left:30px;
   }
   section input[type=button]:last-child  {
     margin-left:30px;
   }
 </style>
</head>
<body>
  <section>
  <form method="post" action="coun_answer">
  <input type="hidden" name="cid" value="${cvo.id}">
    <div style="text-align:left;display:block;"> ${cvo.title} </div>
    <div> ${cvo.content} </div>
    ㄴ
    <div id="forth"> 
    <!-- 일반유저 문의 -->
    <c:if test="${userid != 'admin' }">
    ${content}</c:if> 
    
    <!-- 관리자탭  -->
    <c:if test="${userid == 'admin' }">
    <textarea cols="40" rows="6" name="content" placeholder="답변적기">${content}</textarea>
     <c:if test="${empty content}"> <!-- 답변이 없을경우에만 -->
     <div> <input type="submit" value="답변쓰기"> </div>
    </c:if>
    </c:if>
    </div>
    
    <div style="padding-top:30px;"> 
    <c:if test="${userid != 'admin' }">
      <input type="button" value="목록" onclick="location='clist'">
    </c:if>
    <c:if test="${userid == 'admin' }">
      <input type="button" value="목록" onclick="location='member_coun'">
    </c:if>
      <input type="button" value="삭제" onclick="location='cdelete?id=${cvo.id}'">
    </div>
    </form>
  </section>
</body>
</html>