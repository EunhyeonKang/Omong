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
							<h2>마이페이지</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--마이페이지 첫 화면-->
	<div class="section-top-border" style="margin-left: 30%" id="mypage">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<button class="genric-btn primary-border e-large" id="change">정보변경</button>
				<button class="genric-btn primary-border e-large">내 일정</button>
				<button class="genric-btn primary-border e-large">구매이력</button>
				<hr>
				<form action="#">
					<h4>아이디(메일)</h4>
					<div class="mt-10">
						<input type="text" name="first_name" placeholder="First Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'First Name'" required
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
					<h4>이름</h4>
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
					<h4>생년월일</h4>
					<div class="input-group-icon mt-10">
						<div class="icon">
							<i class="fa fa-thumb-tack" aria-hidden="true"></i>
						</div>
						<input type="text" name="address" placeholder="Address"
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
								<input type="radio" name="gender" id="male" value="남자">남자
							</div>
							</label>
							<label for="female">
							<div style="width : 150px; height : 150px; background-image: url(/resources/img/female.png); background-size:cover; text-align:center;">
								<input type="radio" name="gender" id="female" value="여자" checked>여자
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
	<!--================ 마이페이지첫화면 end =================-->
	<!--마이페이지_정보변경-->
	<div class="section-top-border" style="margin-left: 30%; display:none;" id="change_information">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<button class="genric-btn primary-border e-large">정보변경</button>
				<button class="genric-btn primary-border e-large">내 일정</button>
				<button class="genric-btn primary-border e-large">구매이력</button>
				<hr>
				<form action="#">
					<h4>아이디(메일)</h4>
					<div class="mt-10">
						<input type="text" name="first_name" placeholder="First Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'First Name'" required
							class="single-input">
					</div>
					<hr>
					<h4>비밀번호</h4>
					<div class="mt-10">
						<input type="text" name="last_name" placeholder="asdfsdf Name"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Last Name'" required
							class="single-input">
					</div>
					<hr>
					<h4>이름</h4>
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
					<h4>생년월일</h4>
					<div class="input-group-icon mt-10">
						<div class="icon">
							<i class="fa fa-thumb-tack" aria-hidden="true"></i>
						</div>
						<input type="text" name="address" placeholder="Address"
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
								<input type="radio" name="gender" id="male" value="남자">남자
							</div>
							</label>
							<label for="female">
							<div style="width : 150px; height : 150px; background-image: url(/resources/img/female.png); background-size:cover; text-align:center;">
								<input type="radio" name="gender" id="female" value="여자" checked>여자
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
	<!--================ 마이페이지_정보변경 end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		$("#change_information").click(function(){
			if($("#change_information").css("display") == "none"){
				$("#change_information").show();
				$("#mypage").hide();
				$("#change")attr('class','genric-btn primary e-large');
	</script>
</body>
</html>