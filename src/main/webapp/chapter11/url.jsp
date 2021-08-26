<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>url</title>
</head>
<body>
<h3>&lt; c:url &gt;</h3>
<c:url value="/chapter11/choose.jsp" var="target">
	<c:param name="sel">c</c:param>
</c:url>
<hr />
단순출력 : ${target} <br>
링크연동 : <a href="${target }">choose.jsp-c선택</a>
</body>
</html>