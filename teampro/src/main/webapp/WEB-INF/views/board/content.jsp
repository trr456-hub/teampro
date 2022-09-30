<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		#del {
			display:none;
		}
	</style>
	
	<script>
		function del_view() {
			document.getElementById("del").style.display="table-row";
		}
	</script>
</head>
<body>
	<table width="500" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td> ${bvo.title} </td>
		</tr>
		<tr>
			<td> 아이디 </td>
			<td> ${bvo.userid} </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> ${bvo.title} </td>
		</tr>
		<tr>
			<td> 조회수 </td>
			<td> ${bvo.readnum} </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> ${bvo.writeday} </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			
				<a href="list"> 목록 </a>
			
				<a href="update?id=${bvo.id}"> 수정 </a>


				<a href="javascript:del_view()"> 삭제 </a>


			</td>
		</tr>
		<tr id="del">
			<td colspan="2" align="center">
				<form method="post" action="delete">
					<input type="hidden" name="id" value="${bvo.id}">
					<input type="password" name="pwd">
					<input type="submit" value="삭제">
				</form>
			</td>
		</tr>
		<tr>
			<td>
	<form method="post" action="reply_write_ok">
		<input type="hidden" name="board_id" value="${bvo.id}">
		
		<div align="center">
			<textarea cols="40" rows="3" name="content" placeholder="내용을 입력해주세요."></textarea>
			<input type="submit" value="댓글저장">
		</div>
	</form>
			</td>
		</tr>
	<c:forEach items="${list}" var="rvo">
		<tr>
			<td>${rvo.user_id}</td> <br>
			<td>${rvo.content}</td> <br>
			<td>${rvo.writeday}</td> <br>
		</tr>

	</c:forEach>
	
	</table>
</body>
</html>