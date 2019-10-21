<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>.jsp</title>
</head>
<body>
<%  
   request.setCharacterEncoding("UTF-8");
   String sitename = request.getParameter("sitename");   
   String siteaddr = request.getParameter("siteaddr");
%>
<hr>
입력된 사이트 명 : <%=sitename %><p>
<jsp:include page="subhome.jsp" flush="false">
  <jsp:param name ="siteaddr" value="<%=siteaddr%>"/>
</jsp:include> 
<hr>
사이트명 : 다음<p>
사이트 주소 : http://www.daum.net

</body>
</html>