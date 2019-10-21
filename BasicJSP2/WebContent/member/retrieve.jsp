<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원정보 조회</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
		if(id == null){
			id=(String)session.getAttribute("id");
		}
%>
</head>
<body bgcolor="#FFFFCC">
	<jsp:useBean id="regBean" class="member.member"/>
	<jsp:useBean id="regDbBean" class="member.MemberDb"/>
<% 
	regBean = regDbBean.selectMember(id);
%>
</body>
<div align="center">
<br /> <br />
<form method="post" >
		<table border="1" width="600">
		<tr>
			<td colspan="3"><b>회원 정보 조회</b></td>
		</tr>
			<tr>
				<td width="50%">아이디</td>
				<td><%= regBean.getId() %></td>
			</tr>
			
			<tr>
				<td>password</td>
				<td><%=regBean.getPwd()%></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><%=regBean.getEmail()%></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><%=regBean.getPhone()%></td>
			</tr>
			
			<tr>			
				<td colspan="2" align="center" ><input type="button" value="뒤로가기" Onclick="history.back()"></td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>