<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dbpool.MemberDbBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈회</title>
</head>
<body bgcolor="#ffffcc">
<div align="center"></div>
<form method ="post" action="deletePro.jsp" >
<center>
	<h4>비밀번호 확인</h4><br>
	비밀번호 입력:<input type="password" name="password"><br>
	<input type="submit" value="회원탈회">
	</form>
</center>
</body>
</html>