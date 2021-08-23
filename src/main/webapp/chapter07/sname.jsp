<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspbook.ch07.* , java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<%
request.setCharacterEncoding("UTF-8");
AddrBean addr=am.getAddr(request.getParameter("sname"));
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<h2>회원목록</h2>
	<hr />
	이름 : <%=addr.getUsername() %> <br />
	전화번호 : <%=addr.getTel() %><br />
	이메일 : <%=addr.getEmail() %><br />
	성별 : <%=addr.getGender() %>
	<hr />
	<a href="addr_list.jsp">전체 고객정보 보기</a>
	</div>
</body>
</html>