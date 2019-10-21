<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action=memberPro.jsp>
<table border='1'>
	<tr width=300>
	<td colspan=3>
	<center>
		회원가입
	</center>
	</td>
	<tr>
		<td>아이디</td>
		<td><input type="text"  name="id"></td>
		<td>아이디를 적어주세요.</td>
	</tr>
	<tr>
		<td>패스워드 </td>
		<td><input type="password" name="password"></td>
		<td>패스워드를 적어주세요.</td>
	</tr>
	<tr>
		<td>패스워드 확인</td>
		<td><input type="password" width=10 name="password_OK"></td>
		<td>패스워드를 확인합니다..</td>
	</tr>
	<tr>
		<td>이름</td>
		<td> <input type="text" name="name"></td>
		<td>고객실명을 적어주세요.</td>
	</tr>
	<tr>
		<td>생년월일</td> 
		<td><input type="text" name="birthday"></td>
		<td>셍년월일을 적어주세요.</td>
	</tr>
	<tr>
		<td>이메일 </td> 
		<td><input type="text" name="email"></td>
		<td>이메일을 적어주세요.</td>
	</tr>
<tr width=300>
	<td colspan=3>
	<center>
		<input type = "submit" value="회원가입">
		<input type = "reset" value="다시쓰기">
	</center>
	</td>
	
</table>

</form>
</body>
</html>