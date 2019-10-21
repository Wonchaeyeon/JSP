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

<% String name = request.getParameter("name");
	int clas = Integer.parseInt(request.getParameter("clas"));
	int number = Integer.parseInt(request.getParameter("number"));
		
	if(clas == 1){
		out.println(name+"은 디자인학과 학번은"+number+"입니다.");
		}else if(clas == 2){
		out.println(name+"은 뉴미디어 솔루션 학번은"+number+"입니다.");
		}else {
			out.println(name+"은 SW 학번은"+number+"입니다.");
		}
		%>

	
</body>
</html>