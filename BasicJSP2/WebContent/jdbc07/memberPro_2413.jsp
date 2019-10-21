<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 프로</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String zipcode = request.getParameter("zipcode");
		String address = request.getParameter("address");
		String job = request.getParameter("job");

		System.out.println("id:" + id);
		System.out.println("pwd:" + pwd);
		System.out.println("name:" + name);
		System.out.println("num1:" + num1);
		System.out.println("num2:" + num2);
		System.out.println("email:" + email);
		System.out.println("phone:" + phone);
		System.out.println("zipcode:" + zipcode);
		System.out.println("address:" + address);
		System.out.println("job:" + job);

		Connection conn = null;
		PreparedStatement pstmt = null; //미리 선언해놓는거여서 더 빠름. 더 좋음.
		ResultSet rs = null;

		String str = ""; //멘트 뿌려주는것 
		String s = "";	//결과 성공 했는지 안했늦지

		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
			String dbId = "root";
			String dpPass = "mirim2";

			Class.forName("org.gjt.mm.mysql.Driver");	//메모리에 올려주는것 ,DriverManager도 불러줌

			conn = DriverManager.getConnection(jdbcUrl, dbId, dpPass);
			
			
			String sql = "insert into tblregister(id,pwd,name,num1,num2,email,phone,zipcode,address,job) values(?,?,?,?,?,?,?,?,?,?)"; //?는 우리가 넣어야 될 데이터들을 ?처리 함. 
			pstmt = conn.prepareStatement(sql);  //쿼리 담아주는것 
			pstmt.setString(1, id); //?첫번째 세팅함
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, num1);
			pstmt.setString(5, num2);
			pstmt.setString(6, email);
			pstmt.setString(7, phone);
			pstmt.setString(8, zipcode);
			pstmt.setString(9, address);
			pstmt.setString(10, job);
			pstmt.executeUpdate();

			str = "회원가입이 완료되었습니다.";
			s = "success";
		} catch (Exception e) {
			e.printStackTrace();
			str = "회원가입에 실패하셨습니다.";
			s = "fail";
		} finally {			//오류가 나던 안나던 여기는 실행 함. 
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException sqle) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException sqle) {
				}
		}
	%>
	<%=str%>
	<%
		if (s.equals("success")) {
	%>
	<form method="post" action="login_2413.jsp">
		<input type="submit" value="로긴하기">
	</form>
	<%
		}
	%>
</body>
</html>