<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �α׾ƿ�</title>
</head>
<body>
	<% 
		session.invalidate();
	out.println("�α׾ƿ� �Ǿ����ϴ�.");
	%>
	 <form method="post" action="ret.jsp">
		<input type="submit" value="ȸ��������ȸ">
	</form> 
					
	
	
</body>
</html>