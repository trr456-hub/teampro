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
 <form name="inpro" method="post" enctype="multipart/form-data" action="cmovie_write_ok">
   <table width="800" align="center">
     <tr>
     </tr>
     <tr>
     	<td> 영화제목 </td>
     	<td> <input type="text" name="title"> </td>
     </tr>
     <tr>
     	<td> 영화메인 이미지 </td>
     	<td colspan="2"> <input type="file" name="pimg"> </td>
     </tr>
     <tr>
     	<td> 영화상세 이미지 </td>
     	<td colspan="2"> <input type="file" name="cimg"> </td>
     </tr>
       <tr>
     	<td> 영화소개 </td>
     	<td colspan="2"> <textarea rows="40" cols="8" name="content"></textarea> </td>
     </tr>
       <tr>
     	<td> 감독 </td>
     	<td colspan="2"> <input type="text" name="gamdok"> </td>
     </tr>
       <tr>
     	<td> 배우 </td>
     	<td colspan="2"> <input type="text" name="baeoo"> </td>
     </tr>
      <tr>
     	<td> 장르 </td>
     	<td colspan="2"> <input type="text" name="jang"> </td>
     </tr>
     <tr>
     	<td> 개봉일 </td>
     	<td colspan="2"> <input type="text" name="gaebong"> </td> 
     </tr>
     <tr>
     	<td colspan="3"> <input type="submit" value="등록하기"> </td>
     </tr>
   </table>
  </form>
</body>
</html>