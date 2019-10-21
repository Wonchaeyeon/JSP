<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/>
	<form name="f" method="post" action="loginPro.jsp">
		<center>
		<table>
		<tr><td align="center" colspan="2"><h4>로그인</h4></tr>
		<tr>
			<td> 아이디 </td>
			<td><input type="text" name="id"> </td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd"><br> </td>
		</tr>
		</table>
			<input type="submit" value="로그인">
	</form>

	</center>
	</div>
</body>
</html>