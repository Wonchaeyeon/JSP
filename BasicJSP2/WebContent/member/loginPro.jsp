<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<jsp:useBean id="regDbBean" class="member.MemberDb"/>
<body bgcolor="#ffffcc">
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		int result=	regDbBean.selectId(id,pwd);
		String mesagge="";
		
		if(result==1){

			session.setAttribute("id",id);
			session.setAttribute("pwd",pwd);
			%>
			
		<%if(result == 1){ %>
		<div align="center">
		<table border="1" width="80%" align="center" cellspacing="0" cellpadding="5">
		<tr align="center" >
			<td colspan="3"><font color="#996600"><b>
			<%=id %>���� �α��� �Ǿ����ϴ�.</b></font></td>
		</tr>
		<tr> 
			<td align="center"> 
				<form method="post" action="retrieve.jsp">
					<input type="submit" value="ȸ�� ���� ��ȸ">&nbsp;
				</form>
			</td>
			
		</tr>
	<%}else if(result == 2){ %>
	ID�����Դϴ�</p>
	<input type="button" value="�ڷΰ���" onClick="history.back()"></td></center>
	<%} %>
	</div>
		</table>
		<%}else{ %>
		Password�����Դϴ�.
		<% }%>
		
		
</html>