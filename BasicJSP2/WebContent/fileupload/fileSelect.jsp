<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frmName" method="post" action="ViewPage.jsp" enctype="multipart/foem-data">
	user<br/>
		<input type="text" name="user" ><br/>
	title<br/>
		<input type="text" name="title"><br/>
	file<br/>
		<input type="file" ><br/>
		<input type="submit" value="UPLOAD">
</form>
</body>
</html>