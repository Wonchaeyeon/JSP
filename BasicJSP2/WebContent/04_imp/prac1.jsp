<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>

<body>  
<% Enumeration<String> en=request.getHeaderNames();
	String headerName="";
	String headerValue="";%>

	메소드:<%=request.getMethod() %><br>
	URI: <%=request.getRequestURI() %><br>
	Query: <%=request.getQueryString() %><br>
	Remote: <%=request.getRemoteAddr() %><br>
	프로토콜: <%=request.getProtocol() %><br>
	서버이름: <%=request.getServerName() %><br>
	서버포트: <%=request.getServerPort() %><br>
	ContextPath:<%= request.getContextPath()%> <br>
	
	<%
	while(en.hasMoreElements()){
		headerName = en.nextElement();
		headerValue=request.getHeader(headerName);
		out.println(headerName+":"+headerValue+"<br>");
	}%>
	
	 
</body>
</html>