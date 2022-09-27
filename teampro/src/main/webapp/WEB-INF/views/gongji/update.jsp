<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form method="post" action="update_ok">
     <input type="hidden" name="id" value="${gvo.id}">
     <table width="600" align="center">
     <tr>
       <td> 제 목 </td>
       <td> <input type="text" name="title" size="50" value="${gvo.title}"> </td>
     </tr>
     <tr>
       <td> 내 용 </td>
       <td> <textarea cols="50" rows="6" name="content">${gvo.content}</textarea> </td>
     </tr>
     <tr>
	  	<td colspan="2">
	  	 <c:if test="${gvo.gubun ==1}">
	  	 	<c:set var="gu" value="checked"/>
	  	 </c:if>
	  		<input type="checkbox" name="gubun" value="1" ${gu}>
	  		[중요]
	  	</td>
	  </tr>
     <tr>
       <td align="center" colspan="2"> <input type="submit" value="저장">  </td>
     </tr>
   </table>
   </form>
</body>
</html>