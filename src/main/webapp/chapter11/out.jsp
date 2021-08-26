<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />

</head>
<body bgcolor="#FFFFFF">
	<center>
		<h3>&lt; c:out &gt;</h3>
	</center>

	<table border="1" cellspacing="1" cellpadding="5" align="center">
		<c:forEach var="members" items="${members }">
			<tr>
				<td>${members.name }</td>
				<td><c:out value="${members.email }" escapeXml="false">
						<font color="red">email 없음</font>
					</c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>