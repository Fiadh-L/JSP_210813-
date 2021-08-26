<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstlTest</title>
</head>
<body>
	<!-- if문 사용법 EL을 사용하여 조건문 구현 -->
	<c:if test="${4>3 }">
	수업시작<br>
	</c:if>
	------------------------------------------------------<p/>
	<!-- 변수선언 -->
	<c:set var="i" value="4"/> <%-- <%request.setAttribute("i", 4); %> // int i=4 --%>
	<c:if test="${i>3 }"/>
	점심시간...<br>
	------------------------------------------------------<p/>
	<!-- 반복문 -->
	<c:forEach var="i" begin="1" end="10"> <%-- -- 생략하면 무조건 1씩 증가 --%>
	${i }
	<c:set var="sum" value="${sum=sum+i }"/>
	</c:forEach>
	
	sum:${sum }<br>
	------------------------------------------------------<p/>
	<!-- 반복문2 -->
	<c:forEach var="j" begin="1" end="10" step="${j+2}">
	${j }
	<c:set var="sum" value="${sum2=sum2+j }"/>
	</c:forEach>
	
	<p/>
	sum2 : ${sum2 }<br>
</body>
</html>