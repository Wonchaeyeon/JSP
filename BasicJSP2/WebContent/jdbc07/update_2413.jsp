<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@	page import="java.util.*" %>
	<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body bgcolor="FFFFCC">
	
	<%request.setCharacterEncoding("UTF-8"); %>
	<%	String id = (String)session.getAttribute("id"); 
	String pwd = (String)session.getAttribute("pwd");
	%>
	<%	
		String name = null, num1 = null, num2 =  null, email = null, phone = null, zipcode =  null, address =  null, job =  null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String str="";
		
		try {
			
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dbPass = "mirim2";
			Class.forName("org.gjt.mm.mysql.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);		//질의 실행 결과를 Register
			
			String sql = "select id,pwd,name,num1,num2,email,phone,zipcode,address,job from tblregister where id=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			
			if (rs != null) {
				while (rs.next()) {
					name = rs.getString("name");
					if (name == null)
						name = " ";
					num1 = rs.getString("num1");
					if (num1 == null)
						num1 = " ";
					num2 = rs.getString("num2");
					if (num2 == null)
						num2 = " ";
					email = rs.getString("email");
					if (email == null)
						email = " ";
					phone = rs.getString("phone");
					if (phone == null)
						phone = " ";
					zipcode = rs.getString("zipcode");
					if (zipcode == null)
						zipcode = " ";
					address = rs.getString("address");
					if (address == null)
						address = " ";
					job = rs.getString("job");
					if (job == null)
						job = " ";
				}
			}

	%>
	
	<form method="post" action="updatePro_2413.jsp">
		<table border=1>
			<tr>
				<td>id</td>
				<td><%=	id %></td>
			</tr>
			<tr>
				<td>name</td>
				<td><%=	name %></td>
			</tr>
			<tr>
				<td>주민번호</td>
				<td><%=	num1 %> - <%=	num2 %></td>
			</tr>
			<tr>
				<td>email</td>
				<td><input type="text" name="email" value="<%=	email %>"></td>
			</tr>
			<tr>
				<td>phone</td>
				<td><input type="text" name="phone" value="<%=	phone %>"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zipcode" value="<%=	zipcode %>"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" value="<%=	address %>"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><input type="text" name="job" value="<%=	job %>"></td>
			</tr>
		</table>
		<input type="submit" value="수정">
		<input type="reset" value="취소">
	</form>
	<% 
		} catch (SQLException sqlException) {
			System.out.println("sql exception");
		} catch (Exception exception) {
			System.out.println("exception");
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception ex) {
				}
			}
		}
	%>
	
</body>
</html>