<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에러페이지</title>
</head>
<body>
	<center>
		<h2>처리 중 문제가 발생했습니다</h2>
		<hr />

		<table >
		 	<tr bgcolor="pink">
		 	<td>
			관리자에게 문의해주세요<br />
			빠른 시일내 복구하겠습니다.
			<HR> <%=exception%>	<HR>
			</td>
			</tr>
		</table>
	</center>

</body>
</html>