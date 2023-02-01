<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 | HOSINSA </title>
<link rel="stylesheet" href="css/hosinsa.css">
</head>
<body>

<%@ include file="../../header.jsp" %>
	<div id="wrap" align="center" class="wrapper">
		<h2>상품 등록 - 관리자페이지</h2>
		<form name="frm" method="post" action="HosinsaServlet?command=product_write" enctype="multipart/form-data">
			<input type="hidden" name="command" value="product_write">
			<table>
				<tr>
					<th>카테고리</th>
					<td>
					<select name="category" id="cate">
							<option value="상의">상의</option>
							<option value="아우터">아우터</option>
							<option value="바지">바지</option>
							<option value="원피스">원피스</option>
							<option value="스커트">스커트</option>
							<option value="신발">신발</option>
					</select>					
					</td>
				</tr>

				<tr>
					<th>상품명</th>
					<td><input type="text" name="proname" size="70" maxlength="100"></td>
				</tr>

				<tr>
					<th>상품 이미지</th>
					<td><input type="file" name="proimg"><br></td>
				</tr>
				<tr>
					<th>브랜드</th>
					<td><input type="text" name="brand" size="70" maxlength="100">
					</td>
				</tr>
				<tr>
					<th>상품 번호</th>
					<td><input type="text" name="pronum" size="70" maxlength="100">
					</td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="text" name="price"> 원</td>
				</tr>
				<tr>
					<th>재고</th>
					<td><input type="text" name="stock"></td>
				</tr>
			</table>
			<br><br> 
			<input type="submit" value="등록"> <!-- 변경하기 -->
			<input type="reset" value="다시 작성">
			<input type="button" value="취소" onclick="location.href='HosinsaServlet?command=product_manage'">
		</form>
	</div>
</body>
</html>