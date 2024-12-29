package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs; //각각의 객체 생성
	
	//매개변수가 아무것도 정의되지 않은 기본 생성자
	public JDBConnect() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			
			//jdbc 연결을 위한 url, userid, pwd 정의
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "musthave";
			String pwd = "1234";
			//con에 각각의 정보 저장
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(기본 생성자)");
		} catch (Exception e) {
			e.printStackTrace();
		//exception 발생 시, 원인 출력
		}
	}
	
	//매개변수로 driver, url, id, pwd를 받는 JDBConnect도 생성
	public JDBConnect(String driver, String url, String id, String pwd) {
		try {
			Class.forName(driver);
			
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(인수 생성자1)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//application을 매개변수로 받는 JDBConnect도 생성
	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);
			
			String url = application.getInitParameter("OracleURL");
			String id = application.getInitParameter("OracleId");
			String pwd = application.getInitParameter("OraclePwd");
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB 연결 성공(인수 생성자2)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//사용 후 각각의 객체 close 후 메세지 출력
	public void close() {
		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (psmt != null) psmt.close();
			if (con != null) con.close();
			
			System.out.println("JDBC 자원 해제");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
