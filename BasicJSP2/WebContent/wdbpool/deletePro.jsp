<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@	page import = "java.sql.*" %>
	<%@ page import="dbpool.MemberDbBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈회</title>
</head>
<body  bgcolor="#ffffcc">
<%	
	request.setCharacterEncoding("UTF-8"); 
	MemberDbBean regDbBean=new MemberDbBean();
	%>

	<%
		String id=(String)session.getAttribute("id");
		String pwd=request.getParameter("password");
		String msg="";
		
		
		int result = regDbBean.selectId(id, pwd);
		int r=0;
		if(result == 1){
			r=regDbBean.deleteMember(id);
			if(r==1){
				msg = "탈회 완료 입니다.";
			}else{  
				msg = "탈회 실패 입니다.";

			}
		}else if(result == 3){
			msg="비밀 번호 오류 입니다.";
		}else if(result == 2){
			msg="id오류 입니다.";
		}
	%>
	
	<center><h2><%=msg %></h2></center>
	<input type="button" value="뒤로가기" onClick="history.back()" />
	 
</body>
</html>