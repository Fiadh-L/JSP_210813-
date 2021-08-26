<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품목록 - JSTL</title>
</head>
<body>
	<div align="center">
		<h2>상품목록</h2>
		<hr />
		<form action="ProductSel.jsp" method="post">
			<jsp:useBean id="product" class="jspbook.ch10.product" scope="session"/>
			<select name="sel">
				<c:forEach var="item" items="${product.productList}">
					<option >${item }</option>
				</c:forEach>
			</select>
		</form>
	</div>
</body>
</html>