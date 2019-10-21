<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	request.setCharacterEncoding("UTF-8");

	String id=request.getParameter("id");
   String password=request.getParameter("password");
   
   session.setAttribute("idKey",id);
   session.setMaxInactiveInterval(60*5);
   %>
	<h1>Session예제</h1>
	<form method="post" action="sessionPro2.jsp">
	1.가장 좋아하는 계절은?<br>
	<input type="radio" name="season" value="봄">봄 &nbsp;&nbsp;
	<input type="radio" name="season" value="여름">여름 &nbsp;&nbsp;
	<input type="radio" name="season" value="가을">가을 &nbsp;&nbsp;
	<input type="radio" name="season" value="겨울">겨울 &nbsp;&nbsp;<p/>
	
	1.가장 좋아하는 과일은?<br><p/>
	<input type="radio" name="fruit" value="사과">사과 &nbsp;&nbsp;
	<input type="radio" name="fruit" value="복숭아">복숭아 &nbsp;&nbsp;
	<input type="radio" name="fruit" value="수박">수박 &nbsp;&nbsp;
	<input type="radio" name="fruit" value="귤">귤 &nbsp;&nbsp;<p/>
	
	<input type="submit" value="결과보기">
	
	</form>
</body>
</html>