<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");

	String season=request.getParameter("season");
	String fruit=request.getParameter("fruit");
	String id=(String)session.getAttribute("idKey");
	String sessionId=session.getId();
	int intervalIime=session.getMaxInactiveInterval();
	
	if(id != null){
%>

		<h1>Session Example</h1>
		<b><%=id %></b> 님이 좋아하시는 계절과 과일은<p/>
		<b><%=season %></b>과<b><%=fruit %></b>입니다. <p/>
		세션ID:</b><%=sessionId %><p/>
		세션 유지 시간:<%=intervalIime %>초<p/>
<% 
	session.invalidate();
	}
	else{
	out.print("세션의 시간이 만료 되었거나 다른 이유로 연결을 할 수 없습니다. ");
	}
	%>
</body>
</html>