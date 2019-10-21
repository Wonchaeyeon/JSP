<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="test" class="b06.bean.SimpleBean"/>
<jsp:setProperty name="test" property="message" value="빈을 쉽게 정복하자!"/>
<!-- message는 property라는 속성명으로 접근함 
	자바로 바꾸면 test.setMessaage("빈을 쉽게 정복하자")라는게 getproperty부분임 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>간단한 빈 프로그래밍</h1>
</br>
Message:<jsp:getProperty name="test" property="message" />
</body>
</html>