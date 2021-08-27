<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Property_workspace</title>
</head>
<body>
<div align="center">
<h2>property_workspace</h2>
<hr />
<h3>sevlet 설정값 출력</h3>
<hr />
name : <%=getServletContext().getInitParameter("name3") %> <br>
workspace : <%=getServletContext().getInitParameter("workspace") %>
</div>
</body>
</html>