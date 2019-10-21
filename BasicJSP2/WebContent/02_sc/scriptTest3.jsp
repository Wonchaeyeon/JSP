<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!String str1="Java"; %>
<%! String str2 =str1+" Server Page"; %>

str1=<%=str1 %>입니다.<br>
str2=<%=str2 %>입니다.
</body>
</html>