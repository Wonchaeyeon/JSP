<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%  String number=request.getParameter("number");
	String name=request.getParameter("name");
	String grade=request.getParameter("grade");
	String subject=request.getParameter("subject");  %>
	<h2>학생정보</h2>
	<table border="1" >
	<tr>
		<td width="150" bgcolor="pink">학번</td>
		<td width="150" bgcolor="pink"><%=number %>
	</tr>
	<tr>
		<td width="150" bgcolor="pink" >이름</td>
		<td width="150" bgcolor="pink"><%=name %>학년</td>
	</tr>
	<tr>
		<td width="150" bgcolor="pink">학년</td>
		<td width="150" bgcolor="pink"><%=grade %>과목</td>	
	</tr>
	<tr>
		<td width="150" bgcolor="pink">선택과목</td>
		<td width="150" bgcolor="pink"><%=subject %></td>
	</tr>
	</table>
</body>
</html>