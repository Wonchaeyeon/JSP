<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.Timestamp" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자기소개</title>
</head>
<body>
<%="미림여자정보과학고등학교 원채연" %><p>
<% Timestamp now=new Timestamp(System.currentTimeMillis());
SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
String strDate=format.format(now); %>
<%=strDate %>

</body>
</html>