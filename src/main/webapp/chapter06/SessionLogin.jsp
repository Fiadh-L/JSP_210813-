<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
  <h2> 세션 로그인 </h2>
  <form action="SessionLoginProc.jsp" method="post">
  <table width="400" border="1">
  <tr height="40">
   <td width="110" align="center"> 아이디 </td>
   <td width="290"><input type="text" name="id"  >   
  </tr>
  <tr height="40">
   <td width="400" colspan="2" align="center">
    <input type="submit" value="로그인"></td>
  </tr>
  </table>
  </form>
 </center>
</body>
</html>