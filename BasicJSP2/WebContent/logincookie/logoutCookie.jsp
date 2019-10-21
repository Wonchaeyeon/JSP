<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body bgcolor="#FFFFCC">
<br><br/>
<% 

		Cookie[] cookies=request.getCookies();
		if(cookies != null){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("id")){
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			}
		}
	%>
	<script>
		alert("로그아웃 되었습니다.");
		location.href="loginCookie.jsp";
	</script>
</body>
</html>