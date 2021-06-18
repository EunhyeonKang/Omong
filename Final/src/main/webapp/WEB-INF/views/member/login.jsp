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
							<h2>로그인</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->
	<div class="section-top-border" style="text-align: center;">
		<button class="genric-btn primary e-large" id="user_login"
			style="width: 250px; height: 100px; font-size: 20px; display:show;">일반회원</button>
		<button class="genric-btn success large" id="partner_login"
			style="width: 250px; height: 100px; font-size: 20px; display:show;">파트너</button>
		<div class="section-top-border" id="user" style="margin-left:34%; width:480px; display:none;">
			<form action="#">
					<h4 style="text-align:left;">아이디(메일)</h4>
					<div class="mt-10">
						<input type="text" name="first_name" placeholder="First Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'First Name'" required
							class="single-input">
					</div>
					<hr>
					<h4 style="text-align:left;">비밀번호</h4>
					<div class="mt-10">
						<input type="text" name="last_name" placeholder="Last Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Last Name'" required
							class="single-input">
					</div>
					<br><br>
					<div class="social">
						<a href="https://kauth.kakao.com/oauth/authorize?client_id=c4831aaf9adcbc5aa2f115cf6b83ac70&redirect_uri=http://localhost:8082/kakaologin.do&response_type=code">
						<img src="/resources/img/kakao.jpg" style="margin-left: 1px; width : 50px;" >
						/ Naver / FaceBook
					</div>
					<br><br>
					<div style="text-align : center;">
					<input type="submit" value="로 그 인" class="genric-btn primary e-large" style="width:300px; font-size:x-large; font-weight:bold; background-color:#F18101;">
					</div>
				</form>
		</div>
		<div class="section-top-border" id="partner" style="margin-left:34%; width:480px; display:none;">
			<form action="#">
					<h4 style="text-align:left;">아이디</h4>
					<div class="mt-10">
						<input type="text" name="first_name" placeholder="First Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'First Name'" required
							class="single-input">
					</div>
					<hr>
					<h4 style="text-align:left;">비밀번호</h4>
					<div class="mt-10">
						<input type="text" name="last_name" placeholder="Last Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Last Name'" required
							class="single-input">
					</div>
					<br><br>
					<div style="text-align : center;">
					<input type="submit" value="로 그 인" class="genric-btn success e-large" style="width:300px; font-size:x-large; font-weight:bold;">
					</div>
				</form>
		</div>
	</div>

	<!--================ Blog Area end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		$("#user_login").click(function(){
			if($("#user").css("display") == "none"){
				$("#user").show();
				$("#partner").hide();
				$("#partner_login").attr('class','genric-btn success-border e-large');
				$("#user_login").attr('class','genric-btn primary e-large');
			}
		});

		$("#partner_login").click(function(){
			if($("#partner").css("display") == "none"){
				$("#partner").show();
				$("#user").hide();
				$("#user_login").attr('class','genric-btn primary-border e-large');
				$("#partner_login").attr('class','genric-btn success e-large');
			}
		});
	</script>
</body>
</html>
