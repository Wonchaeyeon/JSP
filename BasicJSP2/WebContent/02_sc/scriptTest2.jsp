<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>선언문 예제 메소드 선언</h2>
<%! String id="Kigdora";
	public String getid(){
	return id;
	}
	%>
id변수의 내용<%=id %><br>
getid()메소드의 실행 결과<%=getid() %>
</body>
</html>