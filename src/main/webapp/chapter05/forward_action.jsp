<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forward_action</title>
</head>
<body>
	<h2>forward_action.jsp에서 footer.jsp 호출</h2>
	<hr />

	forward_action.jsp의 모든 내용은 출력되지 않습니다
	<%!int a = 10;%>
	<jsp:forward page="footer.jsp">
		<jsp:param value="test@test.net" name="email" />
		<jsp:param value="010-1234-5678" name="tel" />

	</jsp:forward>
	<h2>감사합니다</h2>
</body>
</html>