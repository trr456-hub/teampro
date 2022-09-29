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
		background:white;
		padding-top:100px;
		padding-bottom:100px;
	}
	section table {
		width:1000px;
		height:70%;
		margin:auto;
	}
	section table caption {
		text-alilgn:left;
	} 
	section table th {
		border-top:2px solid #cccccc;
		border-bottom:1px solid #cccccc;
	}
	section table td {
		border-bottom:1px solid #cccccc;
	}
	section table tr:last-child td {
		border-bottom:2px solid #cccccc;
	}
</style>
</head>
<body>
	<section>
	 <input type="hidden" name="page" value="1">
		<table width="900" align="center">
			<caption> <h3> 리 뷰  </h3></caption>
			<tr height="60">
			 <th> 영화이름 </th>
			 <th> 제 목 </th>
			 <th> 리뷰내용 </th>
			 <th> 작성일 </th>
			</tr>
			<c:forEach items="${rlist}" var="rvo">
			<tr align="center" height="50">
			 <td> ${rvo.ctitle } </td>
			<td>
				${rvo.title } 
			</td>
			<td>
				${rvo.content} 
			</td>
			 <td> ${rvo.writeday } </td>	
			  <%-- <td>
			 	<input type="button" value="삭제하기" onclick="location='review_del?id=${rvo.id}'">
			 </td> --%>
			</tr>
			</c:forEach>
		</table>
		 <div class="link">
    	 <span align="center">
         <c:if test="${pstart != 1}">
          <a href="myreview?page=${pstart-1}"> << </a>
         </c:if>
         <c:if test="${pstart == 1}">
         </c:if>

         <c:if test="${page != 1}">
          <a href="myreview?page=${page-1}"> < </a>
         </c:if>
         <c:if test="${page == 1}">
         </c:if>

        <c:forEach begin="${pstart}" end="${pend}" var="i">
         <c:if test="${page == i}">
           <a href="myreview?page=${i}" style="cursor:pointer;"> ${i} </a>
         </c:if>
         <c:if test="${page != i}">  
           <a href="myreview?page=${i}"> ${i} </a>
         </c:if>
        </c:forEach>

         <c:if test="${page != chong}">
          <a href="myreview?page=${page+1}"> > </a>
         </c:if>
         <c:if test="${page == chong}">
         </c:if>

         <c:if test="${pend != chong}">
          <a href="myreview?page=${pend+1}"> >> </a>
         </c:if>
         <c:if test="${pend == chong}">
         </c:if>
      </span>
    </div> 
	</section>
</body>
</html>