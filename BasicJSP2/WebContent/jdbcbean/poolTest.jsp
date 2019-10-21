<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "jdbcbean.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<td>아이디</td><td>이름</td><td>이메일</td><td>전화번호</td></tr>
		<%	
			String sql="select id,name, email, phone from tblregister";
			try{
				Connection conn= DBConnection.getConnection(); //익셉션을 처리
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs=pstmt.executeQuery();
				System.out.println("step5");
			while(rs.next()){
				out.println("<tr>");
				out.println("<td>"+rs.getString("id")+"</td>");
				out.println("<td>"+rs.getString("name")+"</td>");
				out.println("<td>"+rs.getString("email")+"</td>");
				out.println("<td>"+rs.getString("phone")+"</td>");
				out.println("</tr>");

			}
			}catch(Exception e){
				e.printStackTrace();
			}
		%>
	</table>
</body>
</html>