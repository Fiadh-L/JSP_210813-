<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="LoginProc.jsp" method="post">
<table width="400" border="1">
<tr height="40" align="center">
<td width="150">아이디</td>
<td>입력하신 아이디는 <%=request.getParameter("id") %> 입니다.</td>
</tr>
<tr height="40" align="center">
<td width="150">비밀번호</td>
<td>입력하신 비밀번호는 <%=request.getParameter("pw") %> 입니다.</td>
</tr>

<%Cookie cookie[]=request.getCookies(); %>
</table>
</form>
</body>
</html>