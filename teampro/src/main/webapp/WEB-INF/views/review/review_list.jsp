<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
 	section {
 		background:white;
 	}
 	div {
 		display: block;
	}
 	/* .pers {
 		
   	 min-height: 500px;
 	} */

 	#review {
 	  width:1300px;
 	  margin:auto;
      width:500px;
 	}
 	div img {
 		border-radius: 10px;
 	}
 	#review .pers {
 		margin-left:-300px;
	 	width:1200px;
	    min-height: 500px;
	    display:flex;
	    flex-wrap:wrap;
	    padding-bottom: 50px;
 	}
 	.pers div {
 		width:700px;
   		display: inline-block;
   		overflow: hidden;
 	}
 	#con {
 		margin-top:15px;
 		margin-left:30px;
 		width:200px;
 		/* position: relative; */
	    padding: 20px;
	    border: 1px solid #ebebeb;
	    border-radius: 10px;
 	}
   .link span{
   	  display:block;
      padding-top:20px;
      margin: auto;
      width: 100%;
      text-align: center;
   }
   .link a {
   		 width: 28px;
   		 height: 28px;
   		 line-height: 28px;
   		 padding:5px;
   }
   .link a:hover {
     width: 28px;
     height: 28px;
     font-weight: bold;
     color: #4b7fd8;
     border: 1px solid #f0f0f0;
   }
 </style>
</head>
<body>
	<section>
	<h2 style="margin-top:30px;margin-bottom:40px;text-align: center;"> 영 화 리 뷰 </h2>
      <article id="review">
      <input type="hidden" name="page" value="1">
       <div class="pers">
         <c:forEach items="${list}" var="rvo">
         	<div id="con">
         		<div> <c:if test="${rvo.mcode == 11}">
         			<img src="../resources/mimg/해리포터마법사의돌.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 10}">
         			<img src="../resources/mimg/타이타닉.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 09}">
         			<img src="../resources/mimg/인피니티워.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 08}">
         			<img src="../resources/mimg/인터스텔라.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 07}">
         			<img src="../resources/mimg/인셉션.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 06}">
         			<img src="../resources/mimg/엔드게임.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 05}">
         			<img src="../resources/mimg/어벤져스1.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 04}">
         			<img src="../resources/mimg/소셜네트워크.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 03}">
         			<img src="../resources/mimg/브루스올마이티.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 02}">
         			<img src="../resources/mimg/머니볼.jpg" width="200">
         		</c:if></div>
         		<div> <c:if test="${rvo.mcode == 01}">
         			<img src="../resources/mimg/매트릭스.jpg" width="200">
         		</c:if></div>
		          <div style="float:left;line-height:23px;margin-top:10px;"> ${fn:substring(rvo.userid,0,4)}** </div> <br>
		          <div style="padding: 0 0 15px 0;line-height: 1.3;color: #444;margin-top:5px;"> ${rvo.title} </div> <br>
		          <div style="padding: 0 0 15px 0;line-height: 1.3;font-size: .9333em;"> ${rvo.content}</div> <br><br><br>
		          <div style="padding: 0;line-height:1.1;font-size: .8667em;"> ${rvo.writeday}</div>
          	</div>
             <p>
         </c:forEach>    
       </div>
    <div class="link">
      <span align="center">
         <c:if test="${pstart != 1}">
          <a href="review_list?page=${pstart-1}"> << </a>
         </c:if>
         <c:if test="${pstart == 1}">
         </c:if>

         <c:if test="${page != 1}">
          <a href="review_list?page=${page-1}"> < </a>
         </c:if>
         <c:if test="${page == 1}">
         </c:if>

        <c:forEach begin="${pstart}" end="${pend}" var="i">
         <c:if test="${page == i}">
           <a href="review_list?page=${i}"   style="width: 28px;
										     height: 28px;
										     font-weight: bold;
										     color: #4b7fd8;
										     border: 1px solid #f0f0f0;cursor:pointer;"> ${i} </a>
         </c:if>
         <c:if test="${page != i}">  
           <a href="review_list?page=${i}"> ${i} </a>
         </c:if>
        </c:forEach>

         <c:if test="${page != chong}">
          <a href="review_list?page=${page+1}"> > </a>
         </c:if>
         <c:if test="${page == chong}">
         </c:if>

         <c:if test="${pend != chong}">
          <a href="review_list?page=${pend+1}"> >> </a>
         </c:if>
         <c:if test="${pend == chong}">
         </c:if>
      </span>
    </div>  
       
    </article>
    </section>
</body>
</html>