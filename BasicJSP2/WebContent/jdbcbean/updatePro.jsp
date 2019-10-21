<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@	page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정완료</title>
</head>
	
	
	<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
	<jsp:setProperty name="regBean" property="id" />
	<jsp:setProperty name="regBean" property="name" />
	<jsp:setProperty name="regBean" property="num1" />
	<jsp:setProperty name="regBean" property="num2" />
	<jsp:setProperty name="regBean" property="email" />
	<jsp:setProperty name="regBean" property="phone" />
	<jsp:setProperty name="regBean" property="zipcode" />
	<jsp:setProperty name="regBean" property="address" />
	<jsp:setProperty name="regBean" property="job" />
	<jsp:useBean id="regDbBean" class="jdbcbean.MemberDbBean"/>
<% 
	regDbBean.updateMember(regBean);
%>
	<body bgcolor="#FFFFCC">
	<div align="center"></div>
	<%	request.setCharacterEncoding("utf-8"); %>
	
	<table border="1" width="80%" align="center" cellspacing="0" cellpadding="5">
	<tr align="center" >
	<td colspan="2"> <font color="#996600"><b>
	<jsp:getProperty name="regBean" property="name"/>
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