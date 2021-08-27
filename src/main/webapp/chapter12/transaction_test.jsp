<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean scope="page" id="bb1" class="jspbook.ch12.Bank1Bean"/>
<jsp:useBean scope="page" id="bb2" class="jspbook.ch12.Bank2Bean"/>
<% request.setCharacterEncoding("UTF-8"); %>

<%
if(request.getMethod().equals("POST")) {
	if(bb1.transfer(Integer.parseInt(request.getParameter("bal")))) {
		out.println("<script> alert('정상처리 되었습니다.')</script>");
	}else{
		out.println("<script> alert('수용한도를 초과 하였습니다.')</script>");
	}
	bb1.getData();
	bb2.getData();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Transaction_test</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<div align="center">
<h3>계좌이체 현황</h3>
<hr />

<table border="1" cellpadding="5" cellspacing="0">
<tr>
<td>bank1</td>
<td>이름 : <%=bb1.getAname() %></td>
<td>잔액 : <%=bb1.getBalance() %></td>
</tr>
<tr>
<td>bank2</td>
<td>이름 : <%=bb2.getAname() %></td>
<td>잔액 : <%=bb2.getBalance() %></td>
</tr>
</table>
<hr />
<form method="post">
이체금액 : <input type="text" name="bal" width="200" size="5"/>
<input type="submit" value="이체실행" name="B1" />
<input type="reset" value="다시입력" name="B2" />
</form>
</div>
</body>
</html>