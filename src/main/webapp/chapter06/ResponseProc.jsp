<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ResponseProc.jsp</title>
</head>
<body>
	<%
	String dbid = "soldesk";
	String dbpass = "12345";

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	if (dbid.equals(id) && dbpass.equals(pass)) {
		//session.setAttribute("id", id);
		//response.sendRedirect("ResponseLogin.jsp");
		response.sendRedirect("ResponseLogin.jsp?id="+id);
	} else {
	%>
	<script type="text/javascript">
		alert("아이디 또는 비밀번호가 틀립니다.");
		history.go(-1);
	</script>
	<%}%>
	감사합니다
</body>
</html>