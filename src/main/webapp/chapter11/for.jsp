<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>for</title>
</head>
<body>
<h3>&lt; c:for&gt;</h3>

<c:forEach var="i" items="${members }" varStatus="status" begin="0" end="5">
	index : ${status.index} / count : ${status.count}<br>
	name : ${i.name }<br>
	email : ${i.email }<br>
	<hr />
</c:forEach>

<hr />
<c:forTokens items="홍길동,010-1111-2222,서울" delims="," var="sel">
${sel }<br>
</c:forTokens>

<hr />
<hr />

<fmt:formatNumber value="3.141592" pattern="#.00"></fmt:formatNumber>
</body>
</html>
<!-- status.index =  몇번재인지 알려줌 -->