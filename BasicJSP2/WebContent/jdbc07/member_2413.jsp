<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"  %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<script type="text/javascript">
function member_check(){
	var id=document.mf.id.value;
	var pass=document.mf.pwd.value;
	var name=document.mf.name.value;
	var num1=document.mf.num1.value;
	var num2=document.mf.num2.value;
	
	if(id==""){
		alert("id�� �Է��ϼ���");
		return false;
	}
	if(pass==""){
		alert("password�� �Է��ϼ���");
		return false;
	}
	if(name==""){
		alert("name�� �Է��ϼ���");
		return false;
	}
	if(num1==""){
		alert("�ֹι�ȣ ���ڸ��� �Է��ϼ���");
		return false;
	}
	if(num2==""){
		alert("�ֹι�ȣ ���ڸ��� �Է��ϼ���");
		return false;
	}
	
}
</script>
</head>
<body bgcolor="#ffffcc">
<div align="center">
	<form name="mf" method="post" action="memberPro_2413.jsp" onsubmit="return member_check()";>
		<table border="2" width="600">
			<tr>
				<td colspan="2"><h4>ȸ������</h4></td>
			</tr>
			<tr>
				<td width="20%">���̵�</td>
				<td><input type="text" name="id"></td>

			</tr>
			<tr>
				<td>�н�����</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>�ֹε�Ϲ�ȣ</td>
				<td><input type="text" name="num1">ex)830815-<input
					type="text" name="num2">ex)1234567</td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>�����ȣ</td>
				<td><input type="text" name="zipcode"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="job"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="ȸ������"> <input
					type="reset" value="�ٽþ���"></td>
					
			</tr>
		</table>

	</form></div>
</body>
</html>