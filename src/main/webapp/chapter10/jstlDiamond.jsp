<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstlDiamond</title>
</head>
<body>
<center>
		<table width="300">
			<c:forEach var="i" begin="1" end="5">
				<tr height="40">
					<c:forEach var="j" begin="1" end="${5-i }">
						<td>&nbsp;</td>
					</c:forEach>
					<c:forEach var="m" begin="1" end="${(i*2)-1 }">
						<td>★</td>
					</c:forEach>
				</tr>
			</c:forEach>
			<c:forEach var="a" begin="1" end="4">
				<tr height="40">
					<c:forEach var="b" begin="1" end="${a}">
						<td>&nbsp;</td>
					</c:forEach>
					<c:forEach var="c" begin="1" end="${9-(a*2) }">
						<td>★</td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
		<p></p>
		<table>
			<c:forEach var="d" begin="1" end="5">
				<tr height="40">
					<c:forEach var="e" begin="1" end="${ (d*2)-1}">
						<td>★</td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>