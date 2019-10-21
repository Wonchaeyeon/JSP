<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<% request.setCharacterEncoding("utf-8"); %>
</head>
<body bgcolor="#FFFFCC">
<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
    <jsp:setProperty name="regBean" property="*"/>   
   	 
   <table width="80%" align="center" cellspacing="0" cellpadding="5">
   	<tr>
   <td align="center" valign="middle">
   <table width="90%" border="1" cellspacing="0" cellpadding="2" align="center">
   <form name="regForm" method ="post" action="memberinsert.jsp">
   	<tr align="center">
   		<td colspan="3"><font color="#996600"><b>
    <jsp:getProperty name="regBean" property="name"/>
      	회원님이 작성하긴 내용입니다. 확인해 주세요 </b></font></td></tr>
      	
      <tr>
      	<td>아이디</td>
      	<td><jsp:getProperty name="regBean" property="id"/></td>
      </tr>
      <tr>
				<td>패스워드</td>
				<td><jsp:getProperty name="regBean" property="pwd"/></td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><jsp:getProperty name="regBean" property="name"/></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><jsp:getProperty name="regBean" property="num1"/>ex)830815-
				<jsp:getProperty name="regBean" property="num2"/>ex)1234567</td>
			</tr>
			<tr>
				<td>Email</td>
				<td><jsp:getProperty name="regBean" property="email"/></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><jsp:getProperty name="regBean" property="phone"/></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><jsp:getProperty name="regBean" property="zipcode"/></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><jsp:getProperty name="regBean" property="address"/></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><jsp:getProperty name="regBean" property="job"/></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="회원가입"> <input
					type="reset" value="다시쓰기"></td>
					
			</tr>
      
      	 </form></table>

</body>
</html>