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
		text-align:center;
		padding-left:20px;
	}
	#content td {
		padding-top:15px;
		padding-bottom:15px;
	}
	#content table tr, td {
		text-align:center;
		font-size:15px;
		
	}
	
	
</style>

</head>
<body>
<section>
<div id="main">
	<div id="content">
		<form method="post" action="write_ok">
			<table id="table_con" width="500" align="center">
				<tr>
					<td class="con_td"> 제 목 </td>
					<td class="con_td"> <input type="text" name="title" size=90"> </td>
				</tr>
				<tr>
					<td class="con_td"> 내용 </td>
					<td class="con_td"> <textarea cols="90" rows="8" name="content"></textarea> </td>
				</tr>
			<c:if test="${userid != null}">
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="저장">
					</td>
				</tr>
			</c:if>
			</table>
		</form>
	</div>
</div>
</section>
</body>
</html>