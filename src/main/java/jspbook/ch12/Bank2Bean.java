package jspbook.ch12;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Bank2Bean {
	
	private int aid;
	private String aname;
	private int balance;
	
	//데이터베이스 연결
	Connection conn=null;
	Statement stmt=null;
	PreparedStatement pstmt=null;
	
	//---------------------------------------------------------------------
	//connection 반납
	public void connect() {
		try {
			
			//new InitialContext()로 Context 객체를 확보
			Context initContext=new InitialContext();
			//JNDI(java name drectory interface) "java:/comp/env"를 이용해서 Context에 환경설정에 접근
			Context envContext=(Context)initContext.lookup("java:/comp/env");
			//jdbc/xe로 DataSource 객체를 얻는다
			DataSource ds=(DataSource)envContext.lookup("jdbc/xe");
			conn=ds.getConnection();
			
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
	}
	
	//---------------------------------------------------------------------
	//connection 반납
	public void disconnect() {
		try {
			if(conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		System.out.println("close");
	}

	//---------------------------------------------------------------------
	//bank2 테이블 정보 출력
	public void getData() {
		
		connect();
		
		try {
			stmt=conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from bank2");
			rs.next();
			aid=rs.getInt("aid");
			aname=rs.getString("aname");
			balance=rs.getInt("balance");
			
		} catch (Exception e) {
			System.err.println(e);
			System.out.println(aid + aname + balance);
		}
		finally {
			disconnect();
		}
	}
	
	
	
	public int getAid() {
		return aid;
	}
	public String getAname() {
		return aname;
	}
	public int getBalance() {
		return balance;
	}
	
}
