<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>include_action.jsp에서 footer.jsp 호츌</h2>
	<hr />
	include_cation.jsp에서 출력한 메세지 입니다
	<br>

	<jsp:include page="footer.jsp">
		<jsp:param value="test@test.net" name="email" />
		<%-- <jsp:param value="admin" name="id"/> --%>
		<jsp:param value="010-1234-5678" name="tel" />
	</jsp:include><br />
	<h2>include_action.jsp가 종료됩니다</h2>
</body>
</html>
<!--<jsp:include> 액션태그: 소스가 그대로 복사되는 것이 아니라 제어권 자체가 include 액션으로 지정된 페이지로 넘어갔다 다시 원래 페이지로 돌아옴-->