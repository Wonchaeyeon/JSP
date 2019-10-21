<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sub home</title>
</head>
<body>
<%  
   request.setCharacterEncoding("UTF-8");
   String siteaddr = request.getParameter("siteaddr"); 
   
%>

사이트주소 : <%=siteaddr %>
</body>
</html>