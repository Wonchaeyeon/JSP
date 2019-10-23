<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@	page import = "java.sql.*" %>
	<%@ page import="dbpool.MemberDbBean" %>
	<%@ page import="dbpool.MemberBean" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정완료</title>
</head>
	<%	
	request.setCharacterEncoding("utf-8"); 
	MemberBean regBean=new MemberBean();
	
	regBean.setId(request.getParameter("id"));
	regBean.setId(request.getParameter("name"));
	regBean.setId(request.getParameter("num1"));
	regBean.setId(request.getParameter("num2"));
	regBean.setId(request.getParameter("email"));
	regBean.setId(request.getParameter("phone"));
	regBean.setId(request.getParameter("zipcode"));
	regBean.setId(request.getParameter("address"));
	regBean.setId(request.getParameter("job"));
	
	MemberDbBean regDbBean=new MemberDbBean();

		
	%>	
	
<% 
	regDbBean.updateMember(regBean);
%>
	<body bgcolor="#FFFFCC">
	<div align="center"></div>

	
	<table border="1" width="80%" align="center" cellspacing="0" cellpadding="5">
	<tr align="center" >
	<td colspan="2"> <font color="#996600"><b>
	<jsp:getProperty property="name" name="regBean"/>
		회원님의 정보가 수정되었습니다. </b></font></td>
		</tr>
		<tr>
			<td width="20%">구분</td>
			<td width="60%">수정 자료</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="regBean"/></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><jsp:getProperty property="phone" name="regBean"/></td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td><jsp:getProperty property="zipcode" name="regBean"/></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><jsp:getProperty property="address" name="regBean"/></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><jsp:getProperty property="job" name="regBean"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="button" value="뒤로가기" onClick="history.back()"> &nbsp;
			</td>
		</tr>
		</table>
	
	
</body>
</html>