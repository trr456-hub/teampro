<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <style>
    section {
      width:100%;
      height:500px;
      margin:auto;
      margin-top:60px;
      background:white;
    }
    section input[type=text] {
      width:500px;
      height:30px;
    }
    section textarea {
      width:500px;
      height:200px;
    }
    section input[type=submit] {
      width:200px;
      height:30px;
      border:1px solid #D941C5;
      background:white;
      color:#D941C5;
    }
    section table {
      border-spacing:17px;
    }
  </style>
</head>
<body>
  <section>
   <form name="review" method="post" action="review_ok"> 
    <input type="hidden" name="mcode" value="${mcode}">
    <table width="700" align="center" >
     <caption> <h3> 영화리뷰 </h3></caption>
     <tr> 
       <td> 제목 </td>
       <td> <input type="text" name="title"> </td>
     </tr>
     <tr>
       <td> 상세리뷰 </td>
       <td> <textarea name="content" cols="30" rows="4"></textarea> </td>
     </tr>
     <tr>
       <td colspan="2" align="center"> <input type="submit" value="리뷰쓰기"> </td>
     </tr>
    </table>
   </form>
  </section>
</body>
</html>