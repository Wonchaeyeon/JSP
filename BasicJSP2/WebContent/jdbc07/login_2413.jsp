<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
<script type="text/javascript">
	function check(){
		var id=document.f.id.value;
		var pass=document.f.pwd.value;
		
		if(id==""){
			alert("id�� �Է��ϼ���");
			return false;
		}
		if(pass==""){
			alert("password�� �Է��ϼ���");
			return false;
		}
	}
	</script>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/>
	<form name="f" method="post" action="loginPro_2413.jsp" onsubmit="return check()";>
		<center>
		<table>
		<tr><td align="center" colspan="2"><h4>�α���</h4></tr>
		<tr>
			<td> ���̵� </td>
			<td><input type="text" name="id"> </td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="pwd"><br> </td>
		</tr>
	
		</table>
			
			<input type="submit" value="�α���">
	</form>
	<input type="button" value="ȸ������"
		Onclick="javascript:location.href='member_2413.jsp'">

	</center>
	</div>
</body>
</html>