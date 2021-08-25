<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>El_계산기</title>
</head>
<body>
	<div align="center">
		<h3>계산기</h3>
		<hr />
		<form action="ElCalc2.jsp" method="post">
		<table>
		<tr>
			<td><input type="text" name="num1" width="200" value="${param.num1 }" /></td>
			 <%-- value="${param.num1 }" 다시 왔을때도 값이 인풋 박스에 남아있게 --%>
			<td>
			<select name="operator">
				<option>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select>
			</td>
			<td>
			 <input type="text" name="num2" width="200"  value="${param.num2 }"/> 
			</td>
			<td> = </td>
			<td>
			<%
			String operator = request.getParameter("operator");
		
			if(operator == null) {
				operator = "+";
			%>
				<input type="text/">
			<%
			} else if (operator.equals("+")) {
			%>
				<input type="text" value="${param.num1 + param.num2}"/> 
			<%
			} else if (operator.equals("-")) {
			%>
				<input type="text" value=" ${param.num1 - param.num2}"/>
			<%
			} else if (operator.equals("*")) {
			%>
				<input type="text" value=" ${param.num1 * param.num2}"/>
			<%
			} else if (operator.equals("/")) {
			%>
				<input type="text" value=" ${param.num1 / param.num2}"/>
			<%
			}
			%>
			</td>
			<td>
			<input type="submit" value="결과보기" />
			</td> 
		</tr>
		</table>
	</div>
	</form>
</body>
</html>