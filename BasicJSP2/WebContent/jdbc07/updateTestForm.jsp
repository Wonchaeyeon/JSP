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
<form method="post" action="updateTestPro.jsp">
	<h2>tblRegister테이블 레코드 수정</h2>
	아이디 <input type="text" name="id"><br>
	암호:<input type="password" name="password"><br>
	변경할 이름:<input type="text" name="name"><br>
	<input type="submit" value="입력완료">
</form>
</body>
</html>