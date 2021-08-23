<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberJoinProc</title>


</head>
<body>
	<center>
		<h2>회원 정보 출력</h2>
		<%
		request.setCharacterEncoding("UTF-8");
		
		%>
		<!-- jsp내용(그림에 입력한 것)을 javabean클래스(memberbean)에 데이터를 매핑(setter)에 넣는 작업 -->
		<jsp:useBean id="mbean" class="jspbook.ch07.MemberBean">
		<!-- //멤버빈 클래스의 mbean이라는 인스턴스를 생성함 -->
		<%-- <jsp:setProperty name="mbean" property="id">
		//setproperty의 mbean에 저장할거야 >>property는 bean클래스의 가져올 변수를 물어봄
		<jsp:setProperty name="mbean" property="pass">
		<jsp:setProperty name="mbean" property="email">
		<jsp:setProperty name="mbean" property="tel">
		<jsp:setProperty name="mbean" property="address"> --%>
		
		<jsp:setProperty name="mbean" property="*"></jsp:setProperty>
		<!-- //해당 클래스의 모든 변수를 불러올때 '*'을 사용함 -->
		</jsp:useBean>
		<!-- javabean클래스(memberbean)에 매핑(getter)한 데이터를 jsp내용(그림에 입력한 것)으로 가져오는 작업//실무에서는 어레이리스트를 사용함 -->
		<h2>당신의 아이디는 : <jsp:getProperty property="id" name="mbean"></jsp:getProperty></h2>
		<h2>당신의 패스워드는 : <jsp:getProperty property="pass" name="mbean"></jsp:getProperty></h2>
		<h2>당신의 이메일은 : <jsp:getProperty property="email" name="mbean"></jsp:getProperty></h2>
		<h2>당신의 전화번호는 : <jsp:getProperty property="tel" name="mbean"></jsp:getProperty></h2>
		<h2>당신의 주소는 : <jsp:getProperty property="address" name="mbean"></jsp:getProperty></h2>
		<hr />
		
		<h2>당신의 전화번호는 : <%=mbean.getTel() %></h2>
	</center>
</body>
</html>