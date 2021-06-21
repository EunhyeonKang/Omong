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
	<div style="margin-left: 30%; margin-top: 1%">
		<button class="genric-btn primary-border e-large" id="change">정보변경</button>
		<button class="genric-btn primary-border e-large" id="trip">내 일정</button>
		<button class="genric-btn primary-border e-large" id="buy">구매이력</button>
	</div>
	<div class="section-top-border" style="margin-left: 30%;" id="mypage">
		<div class="row">
			<div class="col-lg-8 col-md-8">
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
							<div
								style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
								<input type="radio" name="gender" id="male" value="남자">남자
							</div>
						</label> <label for="female">
							<div
								style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
								<input type="radio" name="gender" id="female" value="여자" checked>여자
							</div>
						</label>
					</div>
					<hr>
					<div style="text-align: center;">
						<input type="submit" value="회 원 가 입"
							class="genric-btn primary e-large"
							style="width: 300px; font-size: x-large; font-weight: bold;">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--================ 마이페이지첫화면 end =================-->
	<!--마이페이지_정보변경-->
	<div class="section-top-border"
		style="margin-left: 30%; display:none;" id="change_information">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<hr>
				<form action="#">
					<h4>아이디(메일)</h4>
					<div class="mt-10">
						<input type="text" name="first_name" placeholder="변경 Name"
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
							<div
								style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
								<input type="radio" name="gender" id="male" value="남자">남자
							</div>
						</label> <label for="female">
							<div
								style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
								<input type="radio" name="gender" id="female" value="여자" checked>여자
							</div>
						</label>
					</div>
					<hr>
					<div style="text-align: center;">
						<input type="submit" value="회 원 가 입"
							class="genric-btn primary e-large"
							style="width: 300px; font-size: x-large; font-weight: bold;">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--================ 마이페이지_정보변경 end =================-->
	<!--마이페이지_내일정-->
	<div class="section-top-border"
		style="display:none;" id="mytrip">
		<div class="container">
			<hr style="border: 1px solid black;">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head">
						<div class="serial">일정번호</div>
						<div class="percentage">제목</div>
						<div class="country">날짜</div>
						<div class="visit">조회수</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							2021-06-21
						</div>
						<div class="visit">645032</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ 마이페이지_내일정 end =================-->
		<!--마이페이지_구매이력-->
	<div class="section-top-border"
		style="display:none;" id="buylist">
		<div class="container">
			<hr style="border: 1px solid black;">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head">
						<div class="serial">구매번호</div>
						<div class="percentage">구매내역</div>
						<div class="country">날짜</div>
						<div class="visit">금액</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제주도 잠수함체험권</div>
						<div class="country">
							2021-06-21
						</div>
						<div class="visit">80,000원</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ 마이페이지_내일정 end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		$("#change").click(function(){
			if($("#change_information").css("display") == "none") {
				$("#change_information").show();
				$("#mypage").hide();
				$("#mytrip").hide();
				$("#buylist").hide();
				$("#change").attr('class','genric-btn primary e-large');
				$("#trip").attr('class','genric-btn primary-border e-large');
				$("#buy").attr('class','genric-btn primary-border e-large');
			}
		});
		$("#trip").click(function(){
			if($("#mytrip").css("display") == "none") {
				$("#mytrip").show();
				$("#change_information").hide();
				$("#mypage").hide();
				$("#buylist").hide();
				$("#trip").attr('class','genric-btn primary e-large');
				$("#change").attr('class','genric-btn primary-border e-large');
				$("#buy").attr('class','genric-btn primary-border e-large');
			}
		});
		$("#buy").click(function(){
			if($("#buylist").css("display") == "none") {
				$("#buylist").show();
				$("#change_information").hide();
				$("#mypage").hide();
				$("#mytrip").hide();
				$("#buy").attr('class','genric-btn primary e-large');
				$("#change").attr('class','genric-btn primary-border e-large');
				$("#trip").attr('class','genric-btn primary-border e-large');
			}
		});
	</script>
</body>
</html>