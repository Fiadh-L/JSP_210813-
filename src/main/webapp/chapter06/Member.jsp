<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2 align="center">회원 가입</h2>
	<form action="MemberJoinProc.jsp" method="post">
		<table width="600" border="1" align="center">
			<tr height="40">
				<td width="200" align="center">아이디</td>
				<td width="400"><input type="text" name="id" /></td>
			</tr>
			<tr height="40">
				<td width="200" align="center">패스워드</td>
				<td width="400"><input type="password" name="pw1" /></td>
			</tr>
			<tr height="40">
				<td width="200" align="center">패스워드 확인</td>
				<td width="400"><input type="password" name="pw2" /></td>
			</tr>
			<tr height="40">
				<td align="center">이메일</td>
				<td><input type="email" name="email" /></td>
			</tr>
			<tr height="40">
			<td align="center">성별</td>
			<td>
			<input type="radio" name="gender" />남 
			<input type="radio" name="gender" />여
			</td>
			</tr>
			<tr height="40">
				<td align="center">주소</td>
				<td><input type="text" name="address" /></td>
			</tr>
			<tr height="40">
				<td width="150" align="center">전화번호</td>
				<td><input type="text" name="phone" /></td>
			</tr>
			<tr height="40">
				<td width="200" align="center">당신의 관심분야</td>
				<td width="400" align="center">
				<input type="checkbox" name="hobby" value="여행">여행 &nbsp;&nbsp; 
				<input type="checkbox" name="hobby" value="등산">등산 &nbsp;&nbsp; 
				<input type="checkbox" name="hobby" value="음악">음악 &nbsp;&nbsp; 
				<input type="checkbox" name="hobby" value="독서">독서 &nbsp;&nbsp;
				</td>
			</tr>
			<tr height="40">
				<td width="200" align="center">당신의 직업은</td>
				<td width="400" align="center"><select name="job">
						<option value="교사">교사</option>
						<option value="유투버">유투버</option>
						<option value="의사">의사</option>
						<option value="기술사">기술사</option>
				</select></td>
			</tr>
			<tr height="40">
				<td width="200" align="center">당신의 연령은</td>
				<td width="400" align="center">
				<input type="radio" name="age" value="10">10대 &nbsp;&nbsp; 
				<input type="radio" name="age" value="20">20대 &nbsp;&nbsp; 
				<input type="radio" name="age" value="30">30대 &nbsp;&nbsp; 
				<input type="radio" name="age" value="40">40대 &nbsp;&nbsp;
				</td>
			</tr>
			<tr height="40">
				<td align="center">하고싶은말</td>
				<td><textarea name="info" cols="40" rows="5"></textarea></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="회원가입" /> 
				<input type="reset" value="취소" />
				</td>
			</tr>

		</table>
	</form>
	</center>
</body>
</html>