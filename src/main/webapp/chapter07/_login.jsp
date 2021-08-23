<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- usebean선언 -->
<!-- id:자바에서 인스턴스 변수(객체), class: 패키지 경로, scope:적용범위(*page, request, session, application)//적용범위>>클래스 생존시간 -->
<jsp:useBean id="login" class="jspbook.ch07.LoginBean" scope="page"/>

<!-- login객체를 활용하여 모든 속성을 set -->
<jsp:setProperty name="login" property="*"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Custom Login Form</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
		<div class="container">
		<form class="form-signin" method="post" action="login.jsp">
			<h2 class="form-signin-heading">Please sign in</h2>

			<p>
				<label for="userid" class="sr-only">Username</label> 
				<input type="text" id="userid" name="userid" class="form-control"	placeholder="Username" required autofocus>
			</p>
			<p>
				<label for="passwd" class="sr-only">Password</label> 
				<input type="password" id="passwd" name="passwd" class="form-control" placeholder="Password" required>
			</p>
				
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign	in</button>
		</form>
</body>
</html>