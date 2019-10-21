<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
    <jsp:setProperty name="regBean" property="id" />
	<jsp:setProperty name="regBean" property="name" />
	<jsp:setProperty name="regBean" property="num1" />
	<jsp:setProperty name="regBean" property="num2" />
	<jsp:setProperty name="regBean" property="pwd" />
	<jsp:setProperty name="regBean" property="email" />
	<jsp:setProperty name="regBean" property="phone" />
	<jsp:setProperty name="regBean" property="zipcode" />
	<jsp:setProperty name="regBean" property="address" />
	<jsp:setProperty name="regBean" property="job" />
    <jsp:useBean id="regDbBean" class ="jdbcbean.MemberDbBean" />
   	 <% regDbBean.insertMember(regBean); %>
   	 
</head>

<body bgcolor="#FFFFCC">
   <table width="80%" align="center" cellspacing="0" cellpadding="5">
   		<tr>
   			<td align="center" valign="middle">
   <table width="90%" border="1" cellspacing="0" cellpadding="2" align="center">
   		<form name="regForm" method ="post" action="update.jsp" onsubmit="return member_chk()";>
   			<tr align="center">
   				<td colspan="3"><font color="#996600"><b>
    			<jsp:getProperty name="regBean" property="name"/>
      			회원님의 가입을 축하합니다. </b></font></td></tr>
      	
      	<tr>
      	<td>아이디</td>
      	<td><jsp:getProperty name="regBean" property="id"/></td>
     	 </tr>
      	<tr>
				<td>패스워드</td>
				<td><jsp:getProperty name="regBean" property="pwd"/></td>
			</tr>
			
			
			<tr>
				<td>이름</td>
				<td><jsp:getProperty name="regBean" property="name"/></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><jsp:getProperty name="regBean" property="num1"/> &nbsp; &nbsp; ex)830815-
				<jsp:getProperty name="regBean" property="num2"/> &nbsp; &nbsp;ex)1234567</td>
			</tr>
			<tr>
				<td>Email</td>
				<td><jsp:getProperty name="regBean" property="email"/></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><jsp:getProperty name="regBean" property="phone"/></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><jsp:getProperty name="regBean" property="zipcode"/></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><jsp:getProperty name="regBean" property="address"/></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><jsp:getProperty name="regBean" property="job"/></td>
			</tr>
			<tr>
				<td colspan ="2" align="center">
				<input type= submit value ='회원 정보 수정'> &nbsp; <!--  onclick="location.href='update.jsp'">-->
				</td>
				
			</tr>
			<input type="hidden" name="id" value ="<jsp:getProperty name="regBean" property="id" /> ">
			<!-- input타입의 name인 id가 있어야함. 
				이 id값에 맞는 id를 hidden으로 가져와서 id가 맞아야지 다음으로 값이 넘어감.   -->
     	 </table>
      	 </form>
</body>
</html>