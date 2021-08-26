<%@page import="model.MemberDBBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />

</head>
<body>
<center>
<h2>전체 회원 목록</h2>

<%
MemberDAO mdao=new MemberDAO();
Vector<MemberDBBean> v=mdao.allSelectMember();

request.setAttribute("vec", v); 
//EL자체가 일반변수는 못 끌어오므로 requeset.setAttribute로 서버단에 저장
%>

<table width="1000" border="1">
<tr>
<td width="120" align="center">아이디</td>
<td width="120" align="center">이메일</td>
<td width="120" align="center">전화번호</td>
<td width="120" align="center">취미</td>
<td width="120" align="center">직업</td>
</tr>

<%-- items="${vec }" = v.size() --%>
<c:forEach var="bean" items="${vec }">

<tr height="40">
<td width="120" align="center"><a href="MemberInfo.jsp?id=${bean.id}">${bean.id}</a></td>
<td width="120" align="center">${bean.email}</td>
<td width="120" align="center">${bean.phone}</td>
<td width="120" align="center">${bean.hobby}</td>
<td width="120" align="center">${bean.job}</td>
</tr>

</c:forEach>

<tr>
<td colspan="5"><a href="memberDB_form.jsp">회원 등록</a></td>
</tr>
</table>
</center>
</body>
</html>