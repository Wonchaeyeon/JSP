<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%String id=request.getParameter("id");
	  String pwd=request.getParameter("password");
	  String name=request.getParameter("name");
	  String num1=request.getParameter("num1");
	  String num2=request.getParameter("num2");
	  String email=request.getParameter("email");
	  
	  System.out.println("id:"+id);
	  System.out.println("pwd:"+pwd);
	  System.out.println("name:"+name);
	  System.out.println("num1:"+num1);
	  System.out.println("num2:"+num2);
	  System.out.println("email:"+email);
	  
	  
	  Connection conn=null;
	  PreparedStatement pstmt=null;   //미리 선언해놓는거여서 더 빠름. 더 좋음.
	  ResultSet rs = null; 
	  
	  String str="";  //결과 성공 했는지 안했늦지
	  
	  try{
		  String jdbcUrl="jdbc:mysql://localhost:3306/mydb";
		  String dbId="root";
		  String dpPass="mirim2";
		  
		  Class.forName("org.gjt.mm.mysql.Driver");
		  
		  conn=DriverManager.getConnection(jdbcUrl,dbId,dpPass);
		  String sql="insert into tblregister(id,pwd,name,num1,num2,email) values(?,?,?,?,?,?)";  //?는 우리가 넣어야 될 데이터들을 ?처리 함. 
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);    //?첫번째 세팅함
			pstmt.setString(2,pwd);
			pstmt.setString(3,name);
			pstmt.setString(4,num1);
			pstmt.setString(5,num2);
			pstmt.setString(6,email);
			pstmt.executeUpdate(); 
			
			
			str="Register 테이블에 새로운 레코드를 추가했습니다.";
	  }catch(Exception e){
		  e.printStackTrace();
		  str="Reigster 테이블에 새로운 레코드를 추가에 실패했습니다.";
	  }finally{
		  if(pstmt != null)
			  try{ pstmt.close();
			  }catch(SQLException sqle){}
		  if(conn != null)
			  try {pstmt.close();
			  }catch(SQLException sqle){}  
	  }
	  
	  
	  %>
	  <%=str %>
	  <form method="post" action="useDB.jsp">
	  	<input type="submit" value="테이터 조회">
	  </form>
</body>
</html>

















