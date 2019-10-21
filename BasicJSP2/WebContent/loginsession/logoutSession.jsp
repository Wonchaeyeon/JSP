<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 로그아웃</title>
</head>
<body>
	<% 
		session.invalidate();
	out.println("로그아웃 되었습니다.");
	%>
	 <form method="post" action="ret.jsp">
		<input type="submit" value="회원정보조회">
	</form> 
					
	
	
</body>
</html>