<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="jdbcbean.MemberDbBean" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 로그인 프로</title>
</head>
<body bgcolor="#ffffcc">
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		MemberDbBean regDbBean=new MemberDbBean();
		int result=regDbBean.selectId(id,pwd);
		String msg="";
		
		if(result==1){

			session.setAttribute("id",id);
			session.setAttribute("pwd",pwd);
		}else if(result==2){
			msg="ID 오류입니다.";
		}else {
			msg="Password 오류입니다";
		}
		
		System.out.println("session 유지시간:"+session.getMaxInactiveInterval());
			
		%>
			
			
		<%if(result == 1){ %>
		<div align="center">
		<table border="1" width="80%" align="center" cellspacing="0" cellpadding="5">
		<tr align="center" >
			<td colspan="3"><font color="#996600"><b>
			<%=id %>님이 로그인 되었습니다.</b></font></td>
		</tr>
		<tr> 
			<td align="center"> 
				<form method="post" action="ret.jsp">
					<input type="submit" value="회원 정보 조회">&nbsp;
				</form>
			</td>
			<td align="center"> 
				<form method="post" action="update.jsp">
					<input type="submit" value="회원 정보 수정">&nbsp;
				</form>
			</td>
			<td align="center"> 
				<form method="post" action="delete.jsp">
					<input type="submit" value="회원 탈회">&nbsp;
				</form>
			</td>
		</tr>
		</table>
		<form method="post" action="logoutSession.jsp">
		<p align="center">
		<input type="submit" value="로그아웃" > &nbsp;
		</p>
		</form>
		
	<%}else if(result ==2){ %>
		<%=msg %></p>
	<input type="button" value="뒤로가기" onClick="history.back()"></td></center>
	<%}else{ %>
	<%=msg %>
	<input type="button" value="뒤로가기" onClick="history.back()"></td></center>
	<% }%>
	</div>
		</table>
			
		
		
		
</body>
</html>