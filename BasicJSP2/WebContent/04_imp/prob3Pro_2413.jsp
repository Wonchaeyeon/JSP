<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
        <%@page import="java.sql.Timestamp" %>
        <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<%
String name=request.getParameter("name");
String memo=request.getParameter("memo");
%>
<%
String names[]={"성명","메모","날짜"};
	Enumeration<String>en=request.getHeaderNames();
	String headerName="";
	String headerValue="";
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>메모장</h2><p>
	<%Timestamp now = new Timestamp(System.currentTimeMillis()); %>
<table border="1">
<tr>
	<td width="150"  >성명</td>
	<td width="150"><%=name %></td>
</tr>
<tr>
	<td width="150"  >메모</td>
	<td width="150"><%=memo %></td>
</tr>
<tr>
	<td width="150"  >날짜</td>
	<td width="150"><%=now.toString() %></td>
</tr>
<%
while(en.hasMoreElements()){
	headerName = en.nextElement();
	headerValue=request.getHeader(headerName);
	out.println("<tr>"+"<td>"+headerName+"</td>"+"<td>"+headerValue+"</td>"+"<br>"+"</tr>");
	}
	%>
</table>
</body>
</html>