package poll;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import poll.DBConnection;

import java.text.*;

public class PollDbBean {
	Connection conn;
	PreparedStatement pstmt;
	String sql;
	ResultSet rs;
	public PollDbBean() {
		try {
			conn = DBConnection.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 connection 오류");
		}
	}
	public int insertPoll(PollBean poll) {
		int result = 0;
		try {
			sql = "insert into tblpoll values(?,?,?,?,?,?,?,?, date_format(NOW(), '%Y%m%d'),?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			pstmt.setString(2,poll.getQuestion());
			pstmt.setString(3,poll.getAnswer1());
			pstmt.setString(4,poll.getAnswer2());
			pstmt.setString(5,poll.getAnswer3());
			pstmt.setString(6,poll.getAnswer4());
			pstmt.setString(7,poll.getSdate());
			pstmt.setString(8,poll.getEdate());
			pstmt.setInt(9, poll.getType());
			pstmt.setInt(10, poll.getActive());
			pstmt.executeUpdate();
			result=1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public String addZero(String indate) {
		String fdate=null;
		if(indate.length()==1) {
			fdate="0"+indate;
		}else {
			fdate = indate;
		}
		return fdate;
	}
	public int isActive(String sdate, String edate) {
		int active = 0;
		
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHSSmm");
		Date dr = new Date();
		Date ds = null;
		Date de = null;
		
		try {
			ds = df.parse(sdate+"000000");
			de = df.parse(edate+"235959");
			System.out.println("rdate : "+dr);
			System.out.println("sdate : "+ds);
			System.out.println("edate : "+de);
			
			int i = dr.compareTo(ds);
			int j = dr.compareTo(de);
			System.out.println("i: "+i);
			System.out.println("j: "+j);
			if ((i >= 0) && (j <=0)) {
				active = 1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return active;
	}
	public Vector<PollBean> selectAll(){
		sql = "select num, question, active from tblpoll";
		Vector<PollBean> vlist = new Vector<PollBean>();
		PollBean poll = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				poll = new PollBean();
				poll.setNum(rs.getInt(1));
				poll.setQuestion(rs.getString(2));
				poll.setActive(rs.getInt(3));
				vlist.add(poll);
			}
		}catch(Exception e) {
			e.printStackTrace();
			}
		return vlist;
		}
	}