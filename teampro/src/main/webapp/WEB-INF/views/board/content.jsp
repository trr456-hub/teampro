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
		height:1200;
		margin:auto;
		background:white;
	}
	#main {
		width:1200px;
		height:100%;
		margin:auto;
		background:white;
	}
	#content {
		width:1000px;
		height:100%;
		margin:auto;
		padding-top:30px;
	}
	#table_con {
		width:1000px;
		height:100%;
	}
	.con_td {
		text-align:left;
		padding-left:20px;
	}
	#content td {
		padding-top:15px;
		padding-bottom:15px;
	}
	#content table tr, td {
		text-align:center;
		font-size:15px;
		border-bottom:1px solid #cccccc;
	}
	#content_reply {
		width:800px;
		padding-top:10px;
		padding-bottom:30px;
		margin:auto;
	}
	#content_reply td {
		padding-top:15px;
		padding-bottom:15px;
		border-bottom:1px solid #cccccc;
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
		text-align:center;
	}
	#reply_form {
		padding-top:10px;
	}
	#del {
		display:none;
	}
	.reply_td {
		text-align:left;
		padding-left:40px;
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
		<table id="table_con" width="500" align="center">
			<tr>
				<td class="con_td"> 제 목 </td>
				<td class="con_td"> ${bvo.title} </td>
			</tr>
			<tr>
				<td class="con_td"> 아이디 </td>
				<td class="con_td"> ${bvo.userid} </td>
			</tr>
			<tr>
				<td class="con_td"> 내 용 </td>
				<td class="con_td"> ${bvo.title} </td>
			</tr>
			<tr>
				<td class="con_td"> 조회수 </td>
				<td class="con_td"> ${bvo.readnum} </td>
			</tr>
			<tr>
				<td class="con_td"> 작성일 </td>
				<td class="con_td"> ${bvo.writeday} </td>
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
				<textarea cols="110" rows="2" name="content" placeholder="댓글을 입력해주세요" style="margin:20px;"></textarea>
				<input type="submit" value="댓글저장" style="padding-top:40px;">
			</div>
		</form>
	</div>
	
		<div id="content_reply">
			<table width="500" align="center">
			<tr>
				<td> 아이디 </td>
				<td class="reply_td"> 내용  </td>
				<td> 날짜 </td>
			</tr>
			<c:forEach items="${rlist}" var="rvo">
				<tr>
					<td>${rvo.user_id}</td>
					<td class="reply_td">${rvo.content}</td>
					<td>${rvo.writeday}</td>
				</tr>				
			</c:forEach>
			</table>
		</div>

	</div>
</div>
</section>

</body>
</html>




