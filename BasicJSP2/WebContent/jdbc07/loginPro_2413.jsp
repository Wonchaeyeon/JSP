<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String str = ""; //결과저장 

		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dpPass = "mirim2";

			Class.forName("org.gjt.mm.mysql.Driver");

			conn = DriverManager.getConnection(jdbcUrl, dbId, dpPass);
			String sql = "select id,pwd from tblregister where id= ?  "; //?는 우리가 넣어야 될 데이터들을 ?처리 함. 
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) { //false임 .데이터 조건이 없을 때 걸리는거임 
				String rId = rs.getString("id");
				String rPwd = rs.getString("pwd");

				System.out.println("rId:" + rId);
				System.out.println("rPwd:" + rPwd);
				System.out.println(id);
				System.out.println(pwd);
				if (id.equals(rId) && pwd.equals(rPwd)) {
					session.setAttribute("id", id);
					session.setAttribute("pwd", pwd);
				
	%>
	<%=rId%>님 로긴 되었습니다.
	<center>
		<form method="post" action="update_2413.jsp">
			<input type="submit" value="회원정보 수정">
		</form>
		<form method="post" action="delete_2413.jsp">
			<input type="submit" value="회원탈회">

		</form>

		<%
			} else
						out.println("패스워드가 틀렸습니다.");
				} else
					out.println("아이디가 틀렸습니다.");
			} catch (Exception e) {
				e.printStackTrace();
				str = "로그인 실패입니다. ";
			} finally {
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException sqle) {
					}
				if (conn != null)
					try {
						pstmt.close();
					} catch (SQLException sqle) {
					}
			}
		%>
		<%=str%>
</body>
</html>