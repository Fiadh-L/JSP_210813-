<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- 두개의 코드는 세트! -->
<!-- CalcBean calc=new CalcBean();과 같은 코드 생성! -->
<jsp:useBean id="calc" class="jspbook.ch03.CalcBean"/> 
<!-- calc 객체의 setter 메서드 호출을 HTML 폼테그에 적용 -->
<jsp:setProperty property="*" name="calc"/>
<% calc.calculate(); %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			<input type="text" name="num2" width=200 size="5" /> 
			<input type="submit" value="계산" name="B1" /> 
			<input type="reset" value="다시입력" name="B2" />
		</form>
		<hr />
		결과출력 : <jsp:getProperty property="result" name="calc"/> <!-- calc.result와 같은 의미 -->
	</div>
</body>
</html>
<%--
<!-- CalcBean calc=new CalcBean();와 같은 코드로 인스턴스 생성 -->
<jsp:useBean id="calc" class="jspbook.ch03.CalcBean"/>
<!-- calc 객체의 setter메서드 호출를 HTML폼테그에 적용 -->
<jsp:setProperty name="calc" property="*"/>
<% calc.calculate(); %>  --%>