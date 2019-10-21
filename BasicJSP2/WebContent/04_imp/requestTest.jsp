<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String protocol=request.getProtocol();
String serverName=request.getServerName();
String queryString=request.getQueryString();
String method=request.getMethod();
String uri=request.getRequestURI();
String remoteHost=request.getRemoteHost();   //ip주소 127.0.0.1로 기본적인 세팅.
String remoteAddr=request.getRemoteAddr();   
int serverPort=request.getServerPort();
String contextPath=request.getContextPath();



 out.print("protocol: "+protocol+"<br>");
out.print("serverName: "+serverName+"<br>");
out.print("querySteing: "+queryString+"<br>");
out.print("method: "+method+"<br>");
out.print("uri: "+uri+"<br>");
out.print("remoteHost: "+remoteHost+"<br>");
out.print("remoteAddr: "+remoteAddr+"<br>");
out.print("severPort: "+serverPort+"<br>");
out.print("contextPath: "+contextPath+"<br>");

%>
</body>
</html>