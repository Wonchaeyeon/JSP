<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ ��ȸ</title>
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
			<td colspan="3"><b>ȸ�� ���� ��ȸ</b></td>
		</tr>
			<tr>
				<td width="50%">���̵�</td>
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
				<td>��ȭ��ȣ</td>
				<td><%=regBean.getPhone()%></td>
			</tr>
			
			<tr>			
				<td colspan="2" align="center" ><input type="button" value="�ڷΰ���" Onclick="history.back()"></td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>