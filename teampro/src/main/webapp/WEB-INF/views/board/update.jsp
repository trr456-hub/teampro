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
		text-align:center;
		padding-top:30px;
	}
	#content table {
		margin:auto;
		width:600px;
		height:500px;
		border:1px solid #cccccc;
	}
</style>

</head>
<body>

<section>

<div id="main">
	<div id="content">
		<form method="post" action="update_ok">
		<input type="hidden" name="id" value="${bvo.id}">
			<table width="600" align="center">
				<tr>
					<td> 제 목 </td>
					<td> <input type="text" name="title" value="${bvo.title}" size="50"> </td>
				</tr>
				<tr>
					<td> 아이디 </td>
					<td> <input type="text" name="userid" value="${bvo.userid}" size="50"> </td>
				</tr>
				<tr>
					<td> 내 용 </td>
					<td> <textarea cols="60" rows="8" name="content">${bvo.content}</textarea> </td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="수정">
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>
</section>

</body>
</html>


