<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>dbcp_teset_oracle</title>
</head>
<body>

<sql:query var="rs" dataSource="jdbc/xe">
select username, email from jdbc_test
</sql:query>
	<center>
		<h2>결과 출력</h2>
		<hr />
		<c:forEach var="row" items="${rs.rows }">
			이름 : ${row.username }
			이메일 : ${row.email }<br>
		</c:forEach>
		<!--rs.rows 는 rs.length/rs.size와 같은 의미 -->
	</center>
</body>
</html>