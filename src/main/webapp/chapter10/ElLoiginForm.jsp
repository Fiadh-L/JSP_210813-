<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ElLoginForm</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<center>
<h2>로그인</h2>
<form action="ElLoginProc.jsp" method="post">
<table width="300" border="1" cellspacing="1" cellpadding="5">
<tr height="40">
<td width="120">아이디</td>
<td width="180"><input type="text" name="id" placeholder="아이디를 입력하세요"/></td>
</tr>
<tr height="40">
<td width="120">비밀번호</td>
<td width="180"><input type="password" name="password" placeholder="비밀번호를 입력하세요"/></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="로그인"/>
</td>
</tr>
</table>
</form>
</center>
</body>
</html>