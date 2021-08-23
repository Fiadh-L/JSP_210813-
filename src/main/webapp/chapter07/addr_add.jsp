<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean" scope="page"/> <!-- 임포트해! -->
<jsp:setProperty name="addr" property="*"/>

<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>

<%
 am.addInfo(addr); //AddrBean에 등록되는 정보를 등록될때마다 잡아와서 manager클래스에 모두 추가해줌
 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_add</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
	
</head>
<body>
<div align="center">
<h2>등록내용</h2>
<hr />
이름 : <jsp:getProperty property="username" name="addr"/><br />
전화번호 : <%=addr.getTel() %><br />
이메일 : <jsp:getProperty property="email" name="addr"/><br />
성별 : <%=addr.getGender() %><br />
<hr />
<a href="addr_list.jsp">목록보기</a>
</div>
</body>
</html>