<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
    
    <!-- 결과창 안나옴 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- id는 bean으로.  --><!-- *대신에 멤버변수 로 써도되는데 다 동일해야함.  -->
  <jsp:useBean id="fbean" class="b06.bean.FavoriteBean"/>
  
      <jsp:setProperty name="fbean" property="color" /> 
     <jsp:setProperty name="fbean" property="flower" /> 
      <jsp:setProperty name="fbean" property="music" />
 
	   제일 좋아하는 색은 <jsp:getProperty name="fbean" property="color" />입니다.<br>
		 제일 좋아하는 꽃은<jsp:getProperty name="fbean" property="flower" />입니다.<br>
		제일 좋아하는 음악은<jsp:getProperty name="fbean" property="music" />입니다.<br>
</body>
</html>