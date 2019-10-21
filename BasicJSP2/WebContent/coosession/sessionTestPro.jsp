<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>정보입력</title>
</head>
<body>

	<% 
	   String id = request.getParameter("id");
	   String pwd=request.getParameter("pwd");
	   
	   session.setAttribute("id",id);
	   session.setAttribute("pwd",pwd);
	  %>
	  
	id와 passwd세션 속성 설정하였습니다.<br>
	id속성값은 <%=(String)session.getAttribute("id") %>이고<br>
	passwd속성값은<%=(String)session.getAttribute("pwd") %> 입니다. 
</body>
</html>