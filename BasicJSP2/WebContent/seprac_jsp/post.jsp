<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Post Servlet</title>
</head>
<body>
 <form method="post" action="PostServlet">
 	id:<input name="id"><br/>
 	pwd:<input type="password" name="pwd"><br/>
 	email:<input name="email"><br/>
 	<input type="submit" value="가입">
 </form>
</body>
</html>