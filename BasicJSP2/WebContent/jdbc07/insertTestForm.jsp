<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
	<form method ="post" action="insertTestPro.jsp">
	아이디:<input type="text" name="id" ><br>
	패스워드:<input type="password" name="password"><br>
	이름:<input type="text" name="name"><br>
	주민번호:<input type="text" name="num1">-<input type="text" name="num2"><br>
	이메일:<input type="text"" name="email"><br>
	<input type="submit" value="입력">
	
	</form>
</body>
</html>