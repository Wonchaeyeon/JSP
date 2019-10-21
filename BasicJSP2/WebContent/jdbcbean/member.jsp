<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
function member_check(){
	var id=document.mf.id.value;
	var pass=document.mf.pwd.value;
	var name=document.mf.name.value;
	var num1=document.mf.num1.value;
	var num2=document.mf.num2.value;
	
	//var pass=document.regForm.pwd.value;
	var pass=document.mf.pwd.value;
	var pass1=document.mf.pwd1.value;

	if(pass!= pass1){
		alert("비밀번호를 똑같이 입력해 주세요");
		return false;
	}
	
	if(id==""){
		alert("id를 입력하세요");
		return false;
	}
	if(pass==""){
		alert("password를 입력하세요");
		return false;
	}
	if(name==""){
		alert("name을 입력하세요");
		return false;
	}
	if(num1==""){
		alert("주민번호 앞자리를 입력하세요");
		return false;
	}
	if(num2==""){
		alert("주민번호 뒷자리를 입력하세요");
		return false;
	}
}

</script>
<body bgcolor="#ffffcc">
<div align="center">
	<form name="mf" method="post" action="memberpro.jsp" onsubmit="return member_check()";>
		<table border="2" width="600">
			<tr>
				<td colspan="2"><h4>회원가입</h4></td>
			</tr>
			<tr>
				<td width="20%">아이디</td>
				<td><input type="text" name="id"></td>

			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td><input type="password" name="pwd1"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><input type="text" name="num1">ex)830815-<input
					type="text" name="num2">ex)1234567</td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zipcode"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><input type="text" name="job"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="회원가입"> 
				<input type="reset" value="다시쓰기"></td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>