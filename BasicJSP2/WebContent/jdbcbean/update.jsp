<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
		if(id == null){
			id=(String)session.getAttribute("id");
		}
%>
</head>
<body bgcolor="#FFFFCC">
	<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
	<jsp:useBean id="regDbBean" class="jdbcbean.MemberDbBean"/>
<% 
	regBean = regDbBean.selectMember(id);
%>
</body>



<div align="center">
<br /> <br />
<form method="post" action="updatePro.jsp">
		<table border="1" width="600">
		<tr>
			<td colspan="3"><b>회원 정보 수정</b></td>
		</tr>
			<tr>
				<td width="50%">아이디</td>
				<td><input type = "text" name = "id" size = "30" value = "<%= regBean.getId() %>"style ="background-color:ligthgray" readonly></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type ="text" name="name" size="30"  value="<%=regBean.getName()%>"style="background-color:Lightgray" readonly></td>
			</tr>
			<tr>
				<td>주민번호</td>
				<td><input type ="text" name="num1" size="30"  value="<%=regBean.getNum1()%>"  style="background-color:Lightgray" readonly>
				- <input type ="text" name="num2" size="30"  value="<%=regBean.getNum2()%>"style="background-color:Lightgray" readonly></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" size="30" value="<%=regBean.getEmail()%>"></td>
			</tr>
			<tr>
				<td>휴대전화</td>
				<td><input type="text" name="phone" size="12" value="<%=regBean.getPhone()%>"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zipcode" size="5" value="<%=regBean.getZipcode()%>"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" size="45" value="<%=regBean.getAddress()%>"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><input type="text" name="job" value="<%=regBean.getJob()%>"></td>
			</tr>
			<tr><td colspan="3" align="center"> <input type="submit" value="수정하기 "> &nbsp; &nbsp;
			
				<input type="button" value="뒤로가기" Onclick="history.back()"></td>
			</tr>
		</table>
	</form>
	</div>
	</body>
</html>