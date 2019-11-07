<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="poll.PollBean" %>
<%@ page import ="poll.PollDbBean" %>
<%@ page import = "java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록된 설문 리스트</title>
</head>
<body bgcolor="#FFFFCC">
	<div align = "center">
		<br/>
		<h2>등록된 설문 리스트</h2>
		<hr width = "600" />
			<table border="1" width="500">
				<tr>
					<td width = "10" align="center"><b>번호</b></td>
					<td width = "100" align = "center">질문</td>
					<td width ="20" align = "center">활성여부</td>
				</tr>
<% 			
			PollDbBean pMgr = new PollDbBean();
			Vector<PollBean> vlist = pMgr.selectAll();	
			PollBean poll = new PollBean();
			int count = vlist.size();
			for(int i = 0; i < vlist.size(); i++){		//vector에서 사용하는 메서드 .size()
				poll = vlist.get(i);
				out.println("<tr>");
				out.println("<td><b>"+poll.getNum() + "</b></td>");
				out.println("<td>"+poll.getQuestion() + "</td>");
				if (poll.getActive() == 0){
					out.println("<td>설문불가</td>");
				}else{
					out.println("<td>설문가능</td>");
				}out.println("</tr>");
			}
				%>
			</table>
	</div>
</body>
</html>