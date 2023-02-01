<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>상품 보기 | HOSINSA</title>
<link rel="stylesheet" href="css/hosinsa.css">

</head>
<body>
<%@ include file="../../header.jsp" %>
	<div id="wrap" align="center">
		<h2>제품 상세보기</h2>
		<table border="1">
			<tr>
				<td colspan="2" rowspan="3">
					<c:choose>
						<c:when test="${empty product.proimgBig}">
							<img src="hosinsa\images\noimage.gif">
						</c:when>
						<c:otherwise>
							<img src="${product.proimgBig}">
						</c:otherwise>
					</c:choose>
				</td>
				<th> 카테고리 </th> <td> ${product.category} </td>
			</tr>
			
			<tr>
				<th> 브랜드 </th> <td>${product.brand}</td>
			</tr>
			
			<tr>
				<th> 가격 </th> <td> ${product.price} </td>
			</tr>
			<tr>
				<th > 이름 </th> <td> ${product.proname} </td>
				<th > 재고 </th> <td> ${product.stock} </td>
			</tr>			
		</table>
		<br><br>
		<input type="button" value="제품 수정" onclick="location.href='HosinsaServlet?command=product_update&num=${product.pronum}'">
		<input type="button" value="제품 삭제" onclick="location.href='HosinsaServlet?command=product_delete&num=${product.pronum}'">
		<input type="button" value="취소" onclick="location.href='HosinsaServlet?command=product_manage'">
	</div>
</body>
</html>