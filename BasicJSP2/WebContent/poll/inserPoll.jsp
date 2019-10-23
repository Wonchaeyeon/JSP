<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>JSP Poll</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br />
		<h2>투표프로그램</h2>
		<hr width="600" />
		<b>설문작성</b>
		<hr width="600" />
		<form method="post" action="pollInsertProc.jsp">
			<table border="1" width="500">
				<tr>
					<td><b>질문</b></td>
					<td colspan="2"><input name="question" size="30"></td>
				</tr>
				<tr>
					<td rowspan="10"><b>답변</b></td>
					<%
						for (int i = 1; i <= 2; i++) {
							out.println("<td>" + (i * 2 - 1)
									+ ": <input name='answer" + i + "'></td>");
							out.println("<td>" + (i * 2)
									+ ": <input name='answer" + i + "'></td>");
							out.println("</tr>");
							if (i == 5) {
								out.println("");
							} else {
								out.println("<tr>");
							}
						}//for end
					%>
				<tr>
					<td>시작일</td>
					<td colspan="2"><select name="strtdateY">							
							<option value="2019">2019
							<option value="2020">2020
					</select>년 <select name="sdateM">
							<%
								for (int i = 1; i <= 12; i++) {
									out.println("<option value='" + i + "'>" + i);
								}
							%>
					</select>월 <select name="strtdateD">
							<%
								for (int i = 1; i <= 31; i++) {
									out.println("<option value='" + i + "'>" + i);
								}
							%>
					</select>일</td>
				</tr>
				<tr>
					<td>종료일</td>
					<td colspan=2><select name="enddateY">
							<option value="2019">2019
							<option value="2020">2020
					</select>년 <select name="enddateM">
							<%
								for (int i = 1; i <= 12; i++) {
									out.println("<option value='" + i + "'>" + i);
								}
							%>
					</select>월 <select name="enddateD">
							<%
								for (int i = 1; i <= 31; i++) {
									out.println("<option value='" + i + "'>" + i);
								}
							%>
					</select>일</td>
				</tr>
				<tr>
					<td>복수투표</td>
					<td colspan=2>
						<input type="radio" name="type" value="1" checked>yes 
						<input type="radio" name="type" value="0">no
					</td>
				</tr>
				<tr>
					<td colspan=3>
						<input type="submit" value="작성하기"> 
						<input type="reset" value="다시쓰기"> 
						<input type="button" value="리스트" onClick="javascript:location.href='pollList.jsp'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>