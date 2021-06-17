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
				<form action="#">
					<h4>이름</h4>
					<div class="mt-10">
						<input type="text" name="first_name" placeholder="First Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'First Name'" required
							class="single-input">
					</div>
					<hr>
					<h4>아이디</h4>
					<div class="mt-10">
						<input type="text" name="last_name" placeholder="Last Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Last Name'" required
							class="single-input">
					</div>
					<hr>
					<h4>비밀번호</h4>
					<div class="mt-10">
						<input type="text" name="last_name" placeholder="Last Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Last Name'" required
							class="single-input">
					</div>
					<hr>
					<h4>비밀번호 확인</h4>
					<div class="mt-10">
						<input type="email" name="EMAIL" placeholder="Email address"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Email address'" required
							class="single-input">
					</div>
					<hr>
					<h4>이메일</h4>
					<div class="input-group-icon mt-10">
						<div class="icon">
							<i class="fa fa-thumb-tack" aria-hidden="true"></i>
						</div>
						<input type="text" name="address" placeholder="Address"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Address'" required
							class="single-input">
					</div>
					<hr>
					<h4>주소</h4>
					<div class="input-group-icon mt-10">
						<div class="icon">
							<i class="fa fa-thumb-tack" aria-hidden="true"></i>
						</div>
						<input type="text" name="address" placeholder="Address"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Address'" required
							class="single-input">
					</div>
					<hr>
					<h4>전화번호</h4>
					<div class="input-group-icon mt-10">
						<div class="icon">
							<i class="fa fa-thumb-tack" aria-hidden="true"></i>
						</div>
						<input type="text" name="address" placeholder="Address"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Address'" required
							class="single-input">
					</div>
					<hr>
					<h4>성별</h4>
					<div class="input-group-icon mt-10">
						<div class="icon">
							<i class="fa fa-plane" aria-hidden="true"></i>
						</div>
						<div class="form-select" id="default-select"">
							<select>
								<option value="남">남자</option>
								<option value="여">여자</option>
							</select>
						</div>
					</div>
					<hr>
					<div style="text-align : center;">
					<input type="submit" value="회 원 가 입" class="genric-btn primary e-large" style="width:300px; font-size:x-large; font-weight:bold";>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--================ Blog Area end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>