<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>import</title>
</head>
<body>
<h3>&lt; c:import &gt;</h3>
다음은 import를 이용해 포함한 것입니다.
<hr />

<c:import url="set.jsp" var="myurl"/>
<c:out value="${myurl }" escapeXml="false"/>
<hr />

<center><h3>import : www.daum.net</h3></center>
<c:import url="https://www.daum.net" var="myurl2"/>
<c:out value="${myurl2 }" escapeXml="false"/>
</body>
</html>