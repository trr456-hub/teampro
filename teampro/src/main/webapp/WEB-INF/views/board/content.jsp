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
	}
	.main {
		padding-top:70px;
		padding-bottom:70px;
		background:white;
		width:100%;
	}
	.main .content {
		position:relative;
		overflow:hidden;
		padding:30px;
		width:1000px;
		margin:0 auto;
		background:#fff
	}
	.main .content .table_con {
		margin: 0 auto;
	    position: relative;
	    padding: 30px;
	    border: 1px solid #ccc;
	}
	.content .table_con tr {
		border-bottom:1px solid #ccc;
		display: block;
	}
	.content .table_con tr > th {
		width: 100px;
    	padding: 12px;
    	color: #333;
	}
	.main .content tr > .content_one {
		text-align: center;
	    width: 87%;
	    font-size: initial;
	}
	#reply_start {
		position: relative;
		margin: 20px 10px 0px;
		text-align: center;
	}
	#reply_start > h3 {
		font-size: 22px;
    	font-weight: bold;
	}
	.content_reply {
	    margin: 5px;
	    width: 1000px;
	    /* border: 1px solid #ccc; */
	}
	.content_reply .reply_table {
		padding: 20px 50px;
	}
	.content_reply .reply_table tr {
		border-bottom:1px solid #ccc;
		display: block;
	}
	.con_reply {
		width:727px;
	}
	.content_reply .reply_table tr > td {
		padding: 10px 10px;
	    font-size: inherit;
	    border-right: 1px solid #ccc;
	}
	.reply_userid {
		overflow: hidden;
		text-overflow: ellipsis;
		width:55px;
	}
</style>
</head>
<body>

<section>
<div class="main">
	<div class="content">
		<table class="table_con">
			<tr>
				<th> 제 목 :  </th>
				<td class="content_one"> ${bvo.title} </td>
			</tr>
			<tr>
				<th> 내 용 :  </th>
				<td class="content_one" style="height:300px"> ${bvo.content} </td>
			</tr>
			<tr>
				<th> 아이디 :  </th>
				<td> ${bvo.userid} </td>
			</tr>
			<tr>
				<th> 조회수 :  </th>
				<td> ${bvo.readnum} </td>
			</tr>
			<tr>
				<th> 작성일 :  </th>
				<td> ${bvo.writeday} </td>
				<td style="float:right">
					<a href="list"> 목록 </a>
					<a href="update?id=${bvo.id}"> 수정 </a>
					<a href="delete?id=${bvo.id}"> 삭제 </a>
				</td>
			</tr>
	</table>
	<div id="reply_start">
		<h3>댓글작성</h3>
	</div>
	<div id="reply_form">
		<form method="post" action="reply_write_ok">
			<input type="hidden" name="board_id" value="${bvo.id}">
			
		<c:if test="${userid != null}">	
			<div align="center">
				<textarea cols="110" rows="2" name="content" placeholder="댓글을 입력해주세요" style="margin:20px;"></textarea>	
				<input type="submit" value="댓글저장" style="padding-top:40px;">
			</div>
		</c:if>
		<c:if test="${userid == null}">
			<div align="center">
				<textarea cols="110" rows="2" name="content" placeholder="로그인을 해주세요" readonly style="margin:20px;"></textarea>	
			</div>
		</c:if>
		</form>
	</div>
		<div class="content_reply">
			<table class="reply_table">
			<tr>
				<td style="font-weight:bold;padding-right: 26px;"> 아이디 </td>
				<td style="font-weight:bold;padding-right: 10px;" class="con_reply"> 내용  </td>
				<td style="border:none; font-weight:bold; padding-left: 25px;"> 날짜 </td>
			</tr>
			<c:forEach items="${rlist}" var="rvo">
				<tr align="center">
					<td class="reply_userid">${rvo.user_id}</td>
					<td class="con_reply" style="text-align: left;">${rvo.content}</td>
					<td style="border:none;">${rvo.writeday}</td>
				</tr>				
			</c:forEach>
			</table>
		</div>
	</div>
</div>
</section>

</body>
</html>




