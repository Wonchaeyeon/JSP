<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.sql.*" %> 
     <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>

	<%	String id=request.getParameter("id");
		String pwd=request.getParameter("passwd");
		System.out.println("step0");
	  Connection conn=null;
	  PreparedStatement pstmt=null; 
	  ResultSet rs=null;		//select할 때는 이게 있어야함. update나insert는 없어도댐 
	  String str="";   
	  System.out.println("id:"+id+"pwd:"+pwd);
	  try{
		  String jdbcUrl="jdbc:mysql://localhost:3306/mydb";
		  String dbId="root";
		  String dpPass="mirim2";
		  
		  Class.forName("org.gjt.mm.mysql.Driver");
		  conn=DriverManager.getConnection(jdbcUrl,dbId,dpPass);
		  
		  String sql="select id, pwd from tblregister where id=?";  
		  pstmt=conn.prepareStatement(sql);			//prepare도 생성할때 sql문을 넣어주니까 빠름. 
		  System.out.println("step1");
		  pstmt.setString(1,id);
		  System.out.println("step2");
		  rs=pstmt.executeQuery();		//rs=pstmt.executeQuery/select만 pstmt.executeQuery임. update,insert등등은 update임. 
		  System.out.println("step3");
		  	//밑에 내려가기 전에 위에서id값을 가져와서 있으면 내려가서 pwd를 비교하는 것임. 
		  	System.out.println("step4");
		  if(rs.next()){		//하나만 가져올 땐 if호 . 데이터가 많으면 while안에if
				String rId = rs.getString("id");
				String rPwd = rs.getString("pwd");
				System.out.println("rId:"+rId);
				System.out.println("rPwd:"+rPwd);
				System.out.println(id);
				System.out.println(pwd);
				if(id.equals(rId) && pwd.equals(rPwd)){
					sql = "delete from tblregister where id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);
					pstmt.executeUpdate();
	%>
	레코드 삭제했습니다. 
	<%
			}else
					out.println("패스워드가 틀렸습니다.");
			}else
				out.println("아이디가 틀렸습니다.");
		}catch(Exception e){
			e.printStackTrace();
			str="데이터 삭제에 실패했습니다";
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