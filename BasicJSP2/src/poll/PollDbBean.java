package poll;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class PollDbBean {
	Connection conn;
	PreparedStatement pstmt;
	String sql;
	ResultSet rs;	
	public PollDbBean(){
		try {
			conn = DBConnection.getConnection();			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 connectino 오류");
		}		
	}	
	public int insertPoll(PollBean poll) {
		int result = 0;
		try {
			sql = "insert into tblpoll values(?, ?, ?, ?, ?, ?, ?, date_format(NOW(), '%Y%m%d'), ?, ?)";
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, poll.getQuestion());
			pstmt.setString(2, poll.getAnswer1());
			pstmt.setString(3, poll.getAnswer2());
			pstmt.setString(4, poll.getAnswer3());
			pstmt.setString(5, poll.getAnswer4());
			pstmt.setString(6, poll.getSdate());
			pstmt.setString(7, poll.getEdate());
			pstmt.setString(8, poll.getRdate());
			pstmt.setInt(9, poll.getType());
			pstmt.setInt(10, poll.getActive());
			pstmt.executeUpdate();
			result = 1;
		}catch(Exception e) {
			e.printStackTrace();			
		}
		return result;
	}	
}



