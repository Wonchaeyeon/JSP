<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.util.*"
    buffer = "16kb"
    autoFlush= "true"
    isThreadSafe="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Date date = new Date();%>
<p>현재 날짜와 시간은</p>
<%=date.toLocaleString()%>r
<p>Copyright＠2019</p>
</body>
</html>