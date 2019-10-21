<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@	page import = "java.util.*" %>
	<%@	page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  bgcolor="#ffffcc">
<%request.setCharacterEncoding("UTF-8"); %>

	<%
		String pwd=request.getParameter("password");
		
	  Connection conn=null;
	  PreparedStatement pstmt=null; 
	  ResultSet rs=null;		
	  String str="";   

	  try{
		  String jdbcUrl="jdbc:mysql://localhost:3306/mydb";
		  String dbId="root";
		  String dpPass="mirim2";
		  
		  Class.forName("org.gjt.mm.mysql.Driver");
		  conn=DriverManager.getConnection(jdbcUrl,dbId,dpPass);
		  
	  String sql="select id, pwd from tblregister where pwd=?";  
		  pstmt=conn.prepareStatement(sql);			
		  pstmt.setString(1,pwd);
		  rs=pstmt.executeQuery();	 
		  	
		  if(rs.next()){		//하나만 가져올 땐 if로 . 데이터가 많으면 while안에if
			
				String rPwd = rs.getString("pwd");
			
				System.out.println("rPwd:"+rPwd);
				//System.out.println(id);
				System.out.println(pwd);
				if(pwd.equals(rPwd)){
					 sql = "delete from tblregister where pwd=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, pwd);
					pstmt.executeUpdate();
	%>
	회원 탈회 완료입니다.  
	<%
			}else
					out.println("회원탈퇴 실패임다.");
			}else
				out.println("회원 탈회 실패.");
		}catch(Exception e){
			e.printStackTrace();
			str="회원탈회 실패입니다.";
		}finally{
			  if(rs != null)
				  try{ 
					  rs.close();
				  }catch(SQLException sqle){}
			  if(pstmt != null)
				  try {
					  pstmt.close();
				  }catch(SQLException sqle){}  
				if(conn != null)
					try{
						conn.close();
					}catch(SQLException sqle){} 
				  }
	%>
	<%=str %>
</body>
</html>