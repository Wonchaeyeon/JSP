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
<body bgcolor="#ffffcc">
	
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
	
	<form method="post" action="deletePro1_2413.jsp">
		<table border=1>
		<tr>
		<td  colspan="2">회원정보</td> </tr>
			<tr>
				<td width="20%">아이디</td>
				<td><%=	id %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=	name %></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><%=	num1 %> - <%=	num2 %></td>
			</tr>
			<tr>
				<td>email</td>
				<td><%=	email %></td>
			</tr>
			<tr>
				<td>전화번호 </td>
				<td><%=	phone %></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><%=	zipcode %></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%=	address %></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%=	job %></td>
			</tr>
		
		<tr>
		<td colspan="2"><input type="submit" value="회원탈회">
		<input type="reset" value="다시쓰기"></td>
		</tr>
		</table>
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