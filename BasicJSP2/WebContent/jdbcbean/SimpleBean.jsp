<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SimpleBean</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");%>
 <jsp:useBean id="mybean" class="jdbcbean.SimpleBean" />
   <jsp:setProperty name="mybean" property="message" value="빈을 쉽게 정복하자!"/>
 		<h1>간단한 빈 프로그래밍</h1>
 		<br>
	Message:<jsp:getProperty name="mybean" property="message"/>
</body>
</html>