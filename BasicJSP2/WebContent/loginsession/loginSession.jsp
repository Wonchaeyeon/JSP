<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 로그인</title>
<script type="text/javascript">
	function check(){
		var id=document.f.id.value;
		var pass=document.f.pwd.value;
		
		if(id==""){
			alert("id를 입력하세요");
			return false;
		}
		if(pass==""){
			alert("password를 입력하세요");
			return false;
		}
	}
	</script>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/>
	<form name="f" method="post" action="loginSessionPro.jsp" >
		<center>
		<table>
		<tr><td align="center" colspan="2"><h4>로그인</h4></tr>
		<tr>
			<td> 아이디 </td>
			<td><input type="text" name="id"> </td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd"><br> </td>
		</tr>
	
		</table>
			
			<input type="submit" value="로그인">
	</form>

	</center>
	</div>
</body>
</html>