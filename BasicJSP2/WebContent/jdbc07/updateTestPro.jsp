<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %> 
     <%@ page import="java.util.*" %>

           
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 수정하기</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>

	<%	String id=request.getParameter("id");
		String pwd=request.getParameter("password");
		String name=request.getParameter("name");
		
	  Connection conn=null;
	  PreparedStatement pstmt=null; 
	  ResultSet rs=null;
	  
	  String str="";   //결과저장 
	  
	  try{
		  String jdbcUrl="jdbc:mysql://localhost:3306/mydb";
		  String dbId="root";
		  String dpPass="mirim2";
		  
		  Class.forName("org.gjt.mm.mysql.Driver");
		  
		  conn=DriverManager.getConnection(jdbcUrl,dbId,dpPass);
		  String sql="select id,pwd from tblregister where id= ? ";  //?는 우리가 넣어야 될 데이터들을 ?처리 함. 
		  pstmt=conn.prepareStatement(sql);
		  
		  pstmt.setString(1,id);
		  rs=pstmt.executeQuery();
		  
		  if(rs.next()){
				String rId = rs.getString("id");
				String rPwd = rs.getString("pwd");

				
				System.out.println("rId:"+rId);
				System.out.println("rPwd:"+rPwd);
				System.out.println(id);
				System.out.println(pwd);
				System.out.println(name);
				if(id.equals(rId) && pwd.equals(rPwd)){
					
					sql = "update tblregister set name = ? where id = ?";
					
					pstmt = conn.prepareStatement(sql);
					
					pstmt.setString(1, name);
					pstmt.setString(2, id);
					pstmt.executeUpdate();
	%>
			레코드를 수정했습니다.		
	<%
			}else
					out.println("패스워드가 틀렸습니다.");
			}else
				out.println("아이디가 틀렸습니다.");
		}catch(Exception e){
			e.printStackTrace();
			str="데이터 업데이트에 실패했습니다";
		}finally{
			  if(pstmt != null)
				  try{ pstmt.close();
				  }catch(SQLException sqle){}
			  if(conn != null)
				  try {conn.close();
				  }catch(SQLException sqle){}  
			  if (rs!= null)
				  try {rs.close();
				  }catch(SQLException sqle){}
				  }
		  
		  
	%>
	<%=str %>
	 	 <form method="post" action="useDB.jsp">
	  	<input type="submit" value="테이터 조회">
</body>
</html>