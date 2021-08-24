<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDB_form</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<div align="center">
<h2>회원가입</h2>
<hr />
<form action="memberDBjoin.jsp" method="post">
			<table width="600"  cellspacing="1" cellpadding="5" border="1">
			<tr height="40">
				<td width="200">아이디</td>
				<td width="400"><input type="text" name="id" placeholder="아이디를 입력하세요" size="20" /></td>
			</tr>
			<tr height="40">
				<td>패스워드</td>
				<td><input type="password" name="pass1"
					placeholder="숫자와 문자를 혼합" /></td>
			</tr>
			<tr height="40">
				<td>패스워드 확인</td>
				<td><input type="password" name="pass2" /></td>
			</tr>
			<tr height="40">
				<td>이메일</td>
				<td><input type="email" name="email" outline: none;/></td>
			</tr>
			<tr height="40">
				<td>성별</td>
				<td>
				<input type="radio" name="gender" value="남"/>남 
				<input type="radio" name="gender" value="여"/>여</td>
			</tr>
			<tr height="40">
				<td>주소</td>
				<td><input type="text" name="address" /></td>
			</tr>
			<tr height="40">
				<td>전화번호</td>
				<td><input type="text" name="phone" /></td>
			</tr>
			<tr height="40">
				<td>당신의 관심분야</td>
				<td>
				<input type="checkbox" name="hobby" value="여행"/>여행 &nbsp;&nbsp;
				<input type="checkbox" name="hobby" value="등산"/>등산 &nbsp;&nbsp;
				<input type="checkbox" name="hobby" value="음악"/>음악 &nbsp;&nbsp;
				<input type="checkbox" name="hobby" value="독서"/>독서 &nbsp;&nbsp;
				</td>
			</tr>
			<tr height="40">
				<td>당신의 직업은</td>
				<td><select name="job">
						<option value="교사" selected>교사</option>
						<option value="의사">의사</option>
						<option value="변호사">변호사</option>
						<option value="배구선수">배구선수</option>
				</select></td>
			</tr>
			<tr height="40">
				<td>당신의 연령은</td>
				<td>
				<input type="radio" name="age" value="10"/>10대  &nbsp;&nbsp;
				<input type="radio" name="age" value="20"/>20대  &nbsp;&nbsp;
				<input type="radio" name="age" value="30"/>30대  &nbsp;&nbsp;
				<input type="radio" name="age" value="40"/>40대  &nbsp;&nbsp;
				</td>
			</tr>
			<tr height="40">
				<td>하고싶은말</td>
				<td><textarea name="info" cols="40" rows="5"></textarea></td>
			</tr>
			<tr height="40">
				<td colspan="2" align="center">
				<input type="submit" value="회원가입" /> 
				<input type="reset" value="취소" /></td>
			</tr>
			</table>
		</form>
</div>
</body>
</html>