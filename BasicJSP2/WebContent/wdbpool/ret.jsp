<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dbpool.MemberDbBean" %>
        <%@ page import="dbpool.MemberBean" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 조회</title>
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
<% 
	MemberBean regBean;
	MemberDbBean regDbBean = new MemberDbBean();
	regBean = regDbBean.selectMember(id);
%>
</body>
<div align="center">
<br /> <br />
<form method="post" action="updatePro.jsp">
		<table border="1" width="600">
		<tr>
			<td colspan="3"><b>회원 정보 조회</b></td>
		</tr>
			<tr>
				<td width="50%">아이디</td>
				<td><%= regBean.getId() %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=regBean.getName()%></td>
			</tr>
			<tr>
				<td>주민번호</td>
				<td><%=regBean.getNum1()%>
				- <%=regBean.getNum2()%></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%=regBean.getEmail()%></td>
			</tr>
			<tr>
				<td>휴대전화</td>
				<td><%=regBean.getPhone()%></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><%=regBean.getZipcode()%></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%=regBean.getAddress()%></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%=regBean.getJob()%></td>
			</tr>
			<tr>			
				<td colspan="2" align="center" ><input type="button" value="뒤로가기" Onclick="history.back()"></td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>