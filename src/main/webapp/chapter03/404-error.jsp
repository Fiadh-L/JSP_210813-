<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404_ERROR</title>
<jsp:useBean id="now" class="java.util.Date"/>
</head>
<body>
	<h2>404_ERROR</h2>
	<hr />

	<table>
		<tr width=100% bgcolor="pink">
			<td>요청하신 페이지를 찾을 수 없습니다<br /> URL 주소를 확인해주세요!!
			</td>
		</tr>
		<td>${now} <!-- EL코 -->
			<p>
				요청하신 페이지 : ${pageContext.errorData.requestURI }<br> 
				상태 코드 : ${pageContext.errorData.statusCode }<br>
				예외 코드 : ${pageContext.errorData.throwable } <!-- isErrorPage="true"를 추가해야 가능!  -->
		</td>
	</table>
</body>
</html>