<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<form action="/adminLogin.do">
		<fieldset>
		<legend>로그인</legend>
		관리자 아이디 : <input type="text" name="adminId"><br>
		관리자 비밀번호 : <input type="password" name="adminPw"><br>
		<input type="submit" value="로그인">
		</fieldset>
	</form>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>