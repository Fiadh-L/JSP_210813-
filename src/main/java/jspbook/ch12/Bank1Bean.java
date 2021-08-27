package jspbook.ch12;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Bank1Bean {
	//멤버선언
	private int aid;
	private String aname;
	private int balance;
	
	//데이터베이스 연결
	Connection conn=null;
	Statement stmt=null;
	PreparedStatement pstmt=null;
	
	//JNDI방식의 데이터베이스 연동
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
	public void getData() {
		connect();
		
		//sql 구현
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from bank1");
			rs.next(); //실제 데이터가 있는지 확인
			aid = rs.getInt("aid");
			aname = rs.getString("aname");
			balance = rs.getInt("balance");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(aid + aname + balance);
			System.out.println(e);
		}
		finally {
			disconnect();
		}
	}
	
	//---------------------------------------------------------------------
	//이체처리
	public boolean transfer(int bal) {
		connect();
		
		try {
			//auto commit 모드가 true인 경우 프로그램 내에서 update,delete 수행하지 못함
			conn.setAutoCommit(false); //autocommit 해제
			pstmt=conn.prepareStatement("update bank1 set balance=balance-? where aid=101");
			pstmt.setInt(1, bal);//?매핑
			pstmt.executeUpdate();
			
			pstmt=conn.prepareStatement("update bank2 set balance=balance+? where aid=201");
			pstmt.setInt(1, bal);//?매핑
			pstmt.executeUpdate();
			
			stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select balance from bank2 where aid=201");
			rs.next();
			if(rs.getInt(1)>10000) {
				conn.rollback();
				return false;
			} else {
				conn.commit();
			}
			
		} catch (Exception e) {
			System.err.println(e);
		}
		finally {
			disconnect();
		}
		
		return true;
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
 