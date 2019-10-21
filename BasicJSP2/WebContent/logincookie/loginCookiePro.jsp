<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import = "jdbcbean.MemberDbBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
</head>
<body bgcolor="#ffffcc">
<div align="center">
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		MemberDbBean regDbBean = new MemberDbBean();
		int result=	regDbBean.selectId(id,pwd);
		String msg="";
		
		if(result==1){
			//쿠키 생성
			Cookie cookie = new Cookie("id",id);
			Cookie cookie2 = new Cookie("pwd",pwd);
			out.println("step4");
			cookie.setMaxAge(60*2);     //쿠키 유효 기간 :2분
			cookie2.setMaxAge(60*2);     //쿠키 유효 기간 :2분
			out.println("step5");
			response.addCookie(cookie);
			response.addCookie(cookie2);
			//loginCookieMain.jsp
			response.sendRedirect("loginCookieMain.jsp");
			out.println("step6");
		}else if(result == 2){ 
			msg="ID오류입니다";
		}else{
			msg="Password오류입니다.";
		 }
		%>
		
		<br><br/>
		<%
			if(result != 1){
				%>
				<%=msg %>
				<input type="button" onClick="history.back()" value="뒤로가기">
				<%
			}
		%>
			
		</div>
		
</body>
</html>