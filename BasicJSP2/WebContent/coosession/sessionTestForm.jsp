<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 로그인 폼</title>
</head>
<body>
	<form method="post" action="sessionTestPro.jsp" >
		<h2>정보 입력 폼</h2><br>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="text" name="pwd"></td>
			</tr>
		</table>
		<input type="submit" value="정보입력">
	</form>
</body>
</html>