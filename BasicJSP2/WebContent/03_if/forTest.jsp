<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forTest</title>
</head>
<body>
<%String strArray[]={"Java","JSP","Android","HTML5"};
  for(int i=0;i<strArray.length;i++){
	  out.println("strArray["+i+"]의 값은"+strArray[i]+"<br>");
	  out.println("strArray["+(i+i)+"]의 값은"+strArray[i]+"<br>");
  }
  %>
</body>
</html>