<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg"
		style="background-image: url(/resources/img/main2.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2>회원가입</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->
	<div class="section-top-border" style="margin-left: 30%">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<h3 class="mb-30">회원가입</h3>
				<hr>
				<form action="/joinMember.do">
					<h4>아이디(메일)</h4>
					<div class="mt-10">
						<input type="text" name="email" placeholder="이메일을 입력해주세요"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'First Name'" required
							class="single-input">
					</div>
					<hr>
					<h4>비밀번호</h4>
					<div class="mt-10">
						<input type="password" name="pw" placeholder="비밀번호를 입력해주세요"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Last Name'" required
							class="single-input">
					</div>
					<hr>
					<h4>비밀번호 확인</h4>
					<div class="mt-10">
						<input type="password" name="re_password" placeholder="비밀번호 확인"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Email address'" required
							class="single-input">
					</div>
					<hr>
					<h4>이름</h4>
					<div class="input-group-icon mt-10">
						<input type="text" name="name" placeholder="이름을 입력해주세요"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Address'" required
							class="single-input">
					</div>
					<hr>
					<h4>주소</h4>
					<div class="input-group-icon mt-10">
						<input type="text" name="address" placeholder="주소를 입력해주세요"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Address'" required
							class="single-input">
					</div>
					<hr>
					<h4>전화번호</h4>
					<div class="input-group-icon mt-10">
						<input type="text" name="phone" placeholder="전화번호를 입력해주세요"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Address'" required
							class="single-input" style="width:30%; float:left;">						
					</div>
					<hr>
					<h4>생년월일</h4>
					<div class="input-group-icon mt-10">
						<input type="date" name="birth" placeholder="생년월일을 입력해주세요"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Address'" required
							class="single-input">
						<!-- <div class="form-select" id="default-select" style="font-size:15px;">
							<select style="float:left;">
								<c:forEach var="i" begin= "0" end= "61">
								<option value=2021-${i}>${2021-i }</option>
								</c:forEach>
							</select>
							<p style="float:left; margin-right:30px;">년</p>
							<select style="float:left;">
								<c:forEach var="i" begin= "0" end= "11">
								<option value=1+${i}>${1+i }</option>
								</c:forEach>
							</select>
							<p style="float:left; margin-right:30px;">월</p>
							<select style="float:left;">
								<c:forEach var="i" begin= "0" end= "30">
								<option value=1+${i}>${1+i }</option>
								</c:forEach>
							</select>
							<p style="float:left; margin-right:30px;">일</p>
						</div> -->
					</div>
					<hr>
					<div class="single-element-widget mt-30">
						<h4>성별</h4>
							<label for="male">
							<div style="width : 150px; height : 150px; background-image: url(/resources/img/male.png); background-size:cover; text-align:center;">
								<input type="radio" name="gender" id="male" value="남">남자
							</div>
							</label>
							<label for="female">
							<div style="width : 150px; height : 150px; background-image: url(/resources/img/female.png); background-size:cover; text-align:center;">
								<input type="radio" name="gender" id="female" value="여">여자
							</div>
							</label>
					</div>
					<hr>
					<div style="text-align : center;">
					<input type="submit" value="회 원 가 입" class="genric-btn primary e-large" style="width:300px; font-size:x-large; font-weight:bold;">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--================ Blog Area end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>
