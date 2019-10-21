<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="pageisError.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>pageError</title>
</head>
<body>
<%  int one=1;
	int zero=0;%>
	<h1>Directive ErrorPage</h1>
	<p>one과 zero의 사칙연산</p>
	one+zero=<%=one+zero %>
	one-zero=<%=one-zero %>
	one*zero=<%=one*zero %>
	one/zero=<%=one/zero %>
</body>
</html>