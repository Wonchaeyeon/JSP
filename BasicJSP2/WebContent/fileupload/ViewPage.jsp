<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> viewPage </title>
</head>
<body>
<% String saveFolder = "C:/Users/Owner/git/repository2/BasicJSP2/WebContent/fileupload/filestorage";
   String encType = "UTF-8";
   int maxSize = 5 * 1024 * 1024;
   try {
	   MultipartRequest multi = null;
	   multi = new MultipartRequest(request, saveFolder, maxSize, encType, new DefaultFileRenamePolicy());
	   Enumeration params = multi.getParameterNames();
	   
	   while (params.hasMoreElements()){
		   String name = (String) params.nextElement();
		   String value = multi.getParameter(name);
		   out.println(name + " = " + value + "<br>");
	   }
	   System.out.println("step1");
	   Enumeration files = multi.getFileNames();
	   System.out.println("step2");
	   while (files.hasMoreElements()){
		   System.out.println("step3");
		   String name = (String) files.nextElement();
		   System.out.println("step4");
		   String filename = multi.getFilesystemName(name);
		   System.out.println("step5");
		   String original = multi.getOriginalFileName(name);
		   System.out.println("step6");
		   String type = multi.getContentType(name);
		   System.out.println("step7");
		   File f = multi.getFile(name);
		   System.out.println("step8");
		   out.println("파라미터 이름 : " + name + "<br>");
		   out.println("실제 파일 이름 : " + original + "<br>");
		   out.println("저장된 파일 이름 : " + filename + "<br>");
		   out.println("파일 타입 : " + type + "<br>");
		   if (f != null){
			   out.println("크기 : " + f.length() + " 바이트");
			   out.println("<br>");
			   System.out.println("step9");
		   }
		}
   	} catch (IOException ioe){
   		System.out.println(ioe);
   	} catch (Exception ex){
   	    System.out.println(ex);
   	}
   
   %>
</body>
</html>