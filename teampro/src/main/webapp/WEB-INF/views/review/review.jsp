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
      padding-top:100px;
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
      width:150px;
      height:40px;
      border-radius:6px;
      border:1px solid #7878E1;
      background:#7878E1;
      color:white;
    }
    section table {
      border-spacing:17px;
    }
      section h3 {
     text-align:center;
     margin:auto;
     font-weight:bold;
     padding-top:30px;
     padding-bottom:15px;
   }
   section table caption {
    font-size:20px;
	line-height:30px;
   }
  </style>
</head>
<body>
  <section>
   <form name="review" method="post" action="review_ok"> 
    <input type="hidden" name="mcode" value="${mcode}">
    <table width="700" align="center" >
     <caption> <h3> 영화 리뷰 </h3></caption>
     <tr> 
       <td> <input type="text" name="title" placeholder="제목을 입력해주세요"> </td>
     </tr>
     <tr>
       <td> <textarea name="content" cols="30" rows="4" placeholder="내용을 입력해주세요"></textarea> </td>
     </tr>
     <tr>
       <td colspan="2" align="center"> <input type="submit" value="리뷰쓰기"> </td>
     </tr>
    </table>
   </form>
  </section>
</body>
</html>