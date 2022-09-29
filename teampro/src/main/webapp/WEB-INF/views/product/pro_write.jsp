<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	section {
	width:1000px;
	height:100%;
	margin:auto;
	background:white;
}
</style>

</head>
<body>

<section>

<form method="post" action="product_ok" enctype="multipart/form-data">
	<table width="700" align="center">
		<tr>
			<td>상품 코드</td>
			<td> <input type="text" name="pcode"> </td>
		</tr>
		<tr>
			<td>상품 이름</td>
			<td> <input type="text" name="title"> </td>
		</tr>
		<tr>
			<td>상품 가격</td>
			<td> <input type="text" name="price"> </td>
		</tr>
		<tr>
			<td>상품 수량</td>
			<td> <input type="text" name="su"> </td>
		</tr>
		<tr>
			<td>상품 이미지</td>
			<td> <input type="file" name="pimg"> </td>
		</tr>
		<tr>
			<td>상품 구분</td>
			<td> <input type="text" name="gubun"> </td>
		</tr>
		<tr>
			<td>상품 구성</td>
			<td> <input type="text" name="gusung"> </td>
		</tr>
		<tr>
			<td>유효 기간</td>
			<td> <input type="text" name="gigan"> </td>
		</tr>
		<tr>
			<td>원산지</td>
			<td> <input type="text" name="made"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="등록">
			</td>
		</tr>
	</table>
</form>

</section>

</body>
</html>