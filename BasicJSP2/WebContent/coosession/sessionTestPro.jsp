<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����Է�</title>
</head>
<body>

	<% 
	   String id = request.getParameter("id");
	   String pwd=request.getParameter("pwd");
	   
	   session.setAttribute("id",id);
	   session.setAttribute("pwd",pwd);
	  %>
	  
	id�� passwd���� �Ӽ� �����Ͽ����ϴ�.<br>
	id�Ӽ����� <%=(String)session.getAttribute("id") %>�̰�<br>
	passwd�Ӽ�����<%=(String)session.getAttribute("pwd") %> �Դϴ�. 
</body>
</html>