package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import member.member;

public class MemberDb {

	static final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	static final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
	static final String USER = "root";
	static final String PASS = "mirim2";
	Connection conn;
	PreparedStatement pstmt;
	String sql;
	ResultSet rs;
	
	
	
	public MemberDb() {
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 Connection 오류");
		}
	}
	
	public void insertMember(member member) {
		try {
			sql = "Insert into member values(?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getPhone());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public member selectMember(String id) {
		member member = new member();
		try {
			sql = "Select * from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			member.setId(rs.getString("id"));
			member.setPwd(rs.getString("pwd"));
			member.setEmail(rs.getString("email"));
			member.setPhone(rs.getString("phone"));
		
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return member;
	}
	
	
	
	public int selectId(String inId, String inPwd) {
		int result=1;
		String id="";
		String pwd="";
		try {
			sql = "select id,pwd from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				id = rs.getString("id");
				pwd=rs.getString("pwd");
				if(pwd.equals(inPwd)) {
					result=1;  //성공
				}else {
					result=3;  //pwd오류
				}
			}else {
				result=2;  //id오류
			}
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		return result;		
	}
	

	
	public void freeConn() {
		if(pstmt != null) {
			try {
				pstmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
}
