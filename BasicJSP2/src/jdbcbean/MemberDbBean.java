package jdbcbean;

import java.sql.*;

public class MemberDbBean {
	static final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	static final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
	static final String USER = "root";
	static final String PASS = "mirim2";
	Connection conn;
	PreparedStatement pstmt;
	String sql;
	ResultSet rs;
	
	
	
	public MemberDbBean() {
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 Connection 오류");
		}
	}
	
	public void insertMember(MemberBean member) {
		try {
			sql = "Insert into tblregister values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getNum1());
			pstmt.setString(5, member.getNum2());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getZipcode());
			pstmt.setString(9, member.getAddress());
			pstmt.setString(10, member.getJob());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public MemberBean selectMember(String id) {
		MemberBean member = new MemberBean();
		try {
			sql = "Select * from tblregister where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			member.setId(rs.getString("id"));
			member.setPwd(rs.getString("pwd"));
			member.setName(rs.getString("name"));
			member.setNum1(rs.getString("num1"));
			member.setNum2(rs.getString("num2"));
			member.setEmail(rs.getString("email"));
			member.setPhone(rs.getString("phone"));
			member.setZipcode(rs.getString("zipcode"));
			member.setAddress(rs.getString("address"));
			member.setJob(rs.getString("job"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return member;
	}
	
	public void updateMember(MemberBean member) {
		try {
			sql = "update tblregister set email = ?, phone=?, zipcode = ?, address =?, job = ?"
					+ "where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getZipcode());
			pstmt.setString(4, member.getAddress());
			pstmt.setString(5, member.getJob());
			pstmt.setString(6, member.getId());
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public int selectId(String inId, String inPwd) {
		int result=1;
		String id="";
		String pwd="";
		try {
			sql = "select id,pwd from tblregister where id = ?";
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
	
	public int deleteMember(String id) {
		int result=0;		//id는 세션에서 가져오고, 입력된 비번으로 가져옴.
		try {				//selectId에서 비번 가져오기 때문임. selectId가 되야 이게 실행. 
			sql = "delete from tblregister where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			result = 1;
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


