<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
import="javax.sql.*, javax.naming.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("UTF-8"); %>
<% 
//데이터베이스 연결관련 클래스의 인스턴스 변수 선언
Connection conn=null; //연결
PreparedStatement pstmt=null; //sql코드

//SQL코드 결과값 반납하는 클래스의 인스턴스 변수
//ResultSet rs=//결과값 담기

try{
	//new InitialContext()로 Context 객체를 확보
	Context initContext=new InitialContext();
	//JNDI(java name drectory interface) "java:/comp/env"를 이용해서 Context에 환경설정에 접근
	Context envContext=(Context)initContext.lookup("java:/comp/env");
	//jdbc/xe로 DataSource 객체를 얻는다
	DataSource ds=(DataSource)envContext.lookup("jdbc/xe");
	
	//연결
	conn=ds.getConnection();
	
	if(request.getParameter("username")!=null) {
		
	//sql문 작성을 위한 PreparedStatement 작성
	String sql="insert into jdbc_test values(?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("username"));
	pstmt.setString(2, request.getParameter("email"));
	pstmt.executeUpdate();
	}
	
} catch(Exception e) {
	e.printStackTrace();
}
%>

<html>
<head>
<title>JDBCTEST</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
	<div align="center">
	<h2>고객 등록</h2>
	<hr />
	<form action="jdbctest.jsp" method="post">
	고객이름 : <input type="text" name="username"/><p/> 
	고객이메일 : <input type="text" name="email"/><p/>
	<input type="submit" value="간단회원가입" />
	</form>
	<hr />
	</div>
	# 등록 목록<p>
	
	<%
	try{
		//SQL문 작성을 위한 Statement작성
		String sql="select username, email from jdbc_test";
		pstmt=conn.prepareStatement(sql);
		
		//Select를 수행하고 데이터정보가 resultset 클래스에 담겨서 값을 반환함
		ResultSet rs=pstmt.executeQuery();
		int i=1;
		//마지막 데이터까지 반복해서 가져옴
		while(rs.next()) {
			out.println(i + " : " + rs.getString(1)+ ", " + rs.getString("email")+"<br>");
			i++;
		}
		rs.close();
		pstmt.close();
		conn.close();
		
	} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	<div>
	
	</div>
</body>
</html>