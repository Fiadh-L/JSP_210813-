<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int result = 0;

if (request.getMethod().equals("POST")) {//포스트 방식 일때만! 포스트는 대문자로 입력

	String op=request.getParameter("operator");
	//문자열 형태로 전달된 값을 int로 변환
	int num1=Integer.parseInt(request.getParameter("num1"));
	int num2=Integer.parseInt(request.getParameter("num2"));
	
	//계산작업
	if(op.equals("+")){
		result=num1+num2;
	}
	else if(op.equals("-")){
		result=num1-num2;
	}
	else if(op.equals("*")){
		result=num1*num2;
	}
	else if(op.equals("/")){
		result=num1/num2;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
	<div align="center">
		<h3>계산기</h3>
		<hr />
		<form name=form1 method="post">
			<input type="text" name="num1" width=200 size="5" /> 
			<select name="operator">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select> 
			<input type="text" name="nu21" width=200 size="5" /> 
			<input type="submit" value="계산" name="B1" /> 
			<input type="reset" value="다시입력" name="B2" />
		</form>
		<hr />
		계산결과 : <%=result %>
	</div>
</body>
</html>