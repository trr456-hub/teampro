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
		height:100%;
		margin:auto;
		background:white;
	}
	#main {
		width:1200px;
		height:800px;
		margin:auto;
	}
	#content {
		width:1000px;
		height:700px;
		margin:auto;

		padding-top:30px;
	}
	#content table {
		margin:auto;
		width:600px;
		height:500px;
		border:1px solid #cccccc;
	}
	#content table tr, td {
		text-align:center;
		border-bottom:1px solid #cccccc;
		font-size:15px;
	}
	#content_reply {
		padding-top:10px;
	}
	#content_reply_c {
		padding-top:10px;
		font-size:15px;
		text-align:center;
	}
	#content_reply span {
		margin-left:25px;
		border-bottom:1px solid #cccccc;
	}
	#content a {
		padding-left:10px;
	}
	#reply_form {
		padding-top:10px;
	}
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

<section>
<div id="main">
	<div id="content">
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
	</table>
	<div id="reply_form">
		<form method="post" action="reply_write_ok">
			<input type="hidden" name="board_id" value="${bvo.id}">
			
			<div align="center">
				<textarea cols="40" rows="3" name="content" placeholder="댓글을 입력해주세요"></textarea>
				<input type="submit" value="댓글저장">
			</div>
		</form>
	</div>
	
		<div id="content_reply">
			<c:forEach items="${rlist}" var="rvo">
				<div id="content_reply_c">
					<span>${rvo.user_id}</span>
					<span>${rvo.content}</span>
					<span>${rvo.writeday}</span>
				</div>
			</c:forEach>
		</div>

	</div>
</div>
</section>

</body>
</html>




