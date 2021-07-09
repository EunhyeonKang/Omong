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
		<button class="genric-btn primary-border e-large" id="trip">내
			일정</button>
		<button class="genric-btn primary-border e-large" id="buy">구매이력</button>
	</div>
	<div class="section-top-border" style="margin-left: 30%;" id="mypage">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<c:choose>
					<c:when test="${sessionScope.kakao.type eq 'm'}">
						<h4>프로필 사진</h4>
						<c:choose>
							<c:when test="${empty sessionScope.u.profileImage}">
								<div class="box" style="background: #BDBDBD; margin-right: 20px">
									<img class="profile"
										src="http://k.kakaocdn.net/dn/dpk9l1/btqmGhA2lKL/Oz0wDuJn1YV2DIn92f6DVK/img_640x640.jpg">
								</div>
							</c:when>
							<c:otherwise>
								<div class="box" style="background: #BDBDBD; margin-right: 20px">
									<img class="profile"
										src="/resources/upload/profile/${sessionScope.u.profileImage }">
								</div>
							</c:otherwise>
						</c:choose>
						<br>
						<h4>아이디(메일)</h4>
						<div class="mt-10">
							<input type="text" name="first_name" placeholder="First Name"
								required class="single-input"
								value="${sessionScope.kakao.email }" readonly>
						</div>
						<hr>
						<h4>비밀번호</h4>
						<div class="mt-10">
							<input type="password" name="last_name" placeholder="Last Name"
								required class="single-input" value="${sessionScope.user.pw }"
								readonly>
						</div>
						<br>
						<hr>
						<h4>이름</h4>
						<div class="input-group-icon mt-10">
							<div class="icon">
								<i class="fa fa-thumb-tack" aria-hidden="true"></i>
							</div>
							<input type="text" name="address" placeholder="Address"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = 'Address'" required
								class="single-input" value="${sessionScope.kakao.name }"
								readonly>
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
								class="single-input" value="${sessionScope.user.address }"
								readonly>
						</div>
						<div class="input-group-icon mt-10">
							<div class="icon">
								<i class="fa fa-thumb-tack" aria-hidden="true"></i>
							</div>
							<input type="text" name="address" placeholder="Address"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = 'Address'" required
								class="single-input" value="${sessionScope.user.detailAddress }"
								readonly>
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
								class="single-input" value="${sessionScope.user.phone }"
								readonly>
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
								class="single-input" value="${sessionScope.kakao.birth }"
								readonly>
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
							<c:choose>
								<c:when test="${sessionScope.kakao.gender eq '남' }">
									<label for="male">
										<div
											style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
											<input type="radio" name="gender" id="male" value="남" checked
												onclick="return(false);">남자
										</div>
									</label>
									<label for="female">
										<div
											style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
											<input type="radio" name="gender" id="female" value="여"
												onclick="return(false);">여자
										</div>
									</label>
								</c:when>
								<c:otherwise>
									<label for="male">
										<div
											style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
											<input type="radio" name="gender" id="male" value="남"
												onclick="return(false);">남자
										</div>
									</label>
									<label for="female">
										<div
											style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
											<input type="radio" name="gender" id="female" value="여"
												checked onclick="return(false);">여자
										</div>
									</label>
								</c:otherwise>
							</c:choose>
						</div>
						<hr>
					</c:when>
					<c:when test="${sessionScope.u.type eq 'e'}">
						<h4>프로필 사진</h4>
						<c:choose>
							<c:when test="${empty sessionScope.u.profileImage}">
								<div class="box" style="background: #BDBDBD; margin-right: 20px">
									<img class="profile"
										src="http://k.kakaocdn.net/dn/dpk9l1/btqmGhA2lKL/Oz0wDuJn1YV2DIn92f6DVK/img_640x640.jpg">
								</div>
							</c:when>
							<c:otherwise>
								<div id="imagePreview" class="box "
									style="background: #BDBDBD; margin-right: 20px;">
									<img id="image"
										src="/resources/upload/profile/${sessionScope.u.profileImage }"
										class="profile">
								</div>
								<div class="input-group-icon mt-10" style="width: 30%">
									<input type="file" name="files" class="single-input"
										onchange="previewImage(this)"> <input type="hidden"
										name="nofile" value="${sessionScope.u.profileImage }">
								</div>
							</c:otherwise>
						</c:choose>
						<hr>
						<h4>아이디(메일)</h4>
						<div class="mt-10">
							<input type="text" name="id" class="single-input"
								value="${sessionScope.u.id }" style="background: #E2E2E2;"
								readonly> <input type="hidden"
								value="${sessionScope.u.id}@naver.com" name="email" />
						</div>
						<hr>
						<h4>비밀번호</h4>
						<div class="mt-10">
							<input type="password" name="pw" required class="single-input"
								value="${sessionScope.u.pw }">
						</div>
						<hr>
						<h4>이름</h4>
						<div class="input-group-icon mt-10">
							<div class="icon">
								<i class="fa fa-thumb-tack" aria-hidden="true"></i>
							</div>
							<input type="text" name="name" style="background: #E2E2E2;"
								class="single-input" value="${sessionScope.u.name }" readonly>
						</div>
						<hr>
						<h4>주소</h4>
						<span><input type="button"
							class="genric-btn primary-border d-none d-lg-block"
							style="border: 1;" onclick="findAddress()" value="주소 찾기"></span>
						<div class="input-group-icon mt-10">
							<input type="hidden" id="sample2_extraAddress">

							<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
							<div id="layer"
								style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
								<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
									id="btnCloseLayer"
									style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
									onclick="closeDaumPostcode()" alt="닫기 버튼">
							</div>
							<input type="text" name="address" id="address"
								placeholder="주소를 입력해주세요" required class="single-input"
								value="${sessionScope.u.address }" readonly> <br> <input
								type="text" name="detailAddress" id="detailAddress"
								placeholder="상세주소를 입력해주세요" required class="single-input"
								value="${sessionScope.u.detailAddress }">
						</div>
						<hr>
						<h4>전화번호</h4>
						<div class="input-group-icon mt-10">
							<div class="icon">
								<i class="fa fa-thumb-tack" aria-hidden="true"></i>
							</div>
							<input class="single-input" type="text" name="phone"
								value="${sessionScope.u.phone }">
						</div>
						<hr>
						<h4>생년월일</h4>
						<div class="input-group-icon mt-10">
							<div class="icon">
								<i class="fa fa-thumb-tack" aria-hidden="true"></i>
							</div>
							<input type="text" name="birth" class="single-input"
								value="${sessionScope.u.birth }" style="background: #E2E2E2;"
								readonly>
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
							<c:choose>
								<c:when test="${sessionScope.u.gender eq '남' }">
									<label for="male">
										<div
											style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
											<input type="radio" name="gender" id="male" value="M" checked
												onclick="return(false);">남자
										</div>
									</label>
									<label for="female">
										<div
											style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
											<input type="radio" name="gender" id="female" value="F"
												onclick="return(false);">여자
										</div>
									</label>
								</c:when>
								<c:otherwise>
									<label for="male">
										<div
											style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
											<input type="radio" name="gender" id="male" value="M"
												onclick="return(false);">남자
										</div>
									</label>
									<label for="female">
										<div
											style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
											<input type="radio" name="gender" id="female" value="F"
												checked onclick="return(false);">여자
										</div>
									</label>
								</c:otherwise>
							</c:choose>
						</div>
					</c:when>
					<c:otherwise>
						<form action="#">
							<h4>프로필 사진</h4>
							<div class="box" style="background: #BDBDBD; margin-right: 20px">
								<img class="profile"
									src="/resources/upload/profile/${sessionScope.u.profileImage }">
							</div>
							<br>
							<h4>아이디(메일)</h4>
							<div class="mt-10">
								<input type="text" name="first_name" placeholder="First Name"
									required class="single-input" value="${sessionScope.u.id }"
									readonly>
							</div>
							<br>
							<hr>
							<h4>이름</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input type="text" name="address" placeholder="Address"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Address'" required
									class="single-input" value="${sessionScope.u.name }" readonly>
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
									class="single-input" value="${sessionScope.u.address }"
									readonly>
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input type="text" name="address" placeholder="Address"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Address'" required
									class="single-input" value="${sessionScope.u.detailAddress }"
									readonly>
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
									class="single-input" value="${sessionScope.u.phone }" readonly>
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
									class="single-input" value="${sessionScope.u.birth }" readonly>
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
								<c:choose>
									<c:when test="${sessionScope.u.gender eq '남' }">
										<label for="male">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="male" value="남자"
													checked onclick="return(false);">남자
											</div>
										</label>
										<label for="female">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="female" value="여자"
													onclick="return(false);">여자
											</div>
										</label>
									</c:when>
									<c:otherwise>
										<label for="male">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="male" value="남자"
													onclick="return(false);">남자
											</div>
										</label>
										<label for="female">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="female" value="여자"
													checked onclick="return(false);">여자
											</div>
										</label>
									</c:otherwise>
								</c:choose>
							</div>
							<hr>
						</form>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<!--================ 마이페이지첫화면 end =================-->
	<!--마이페이지_정보변경-->
	<div class="section-top-border"
		style="margin-left: 30%; display: none;" id="change_information">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<c:choose>
					<c:when test="${sessionScope.u.type eq 'e'}">
						<form method="POST"
							action="/employeeUpdate.do?employeeId=${sessionScope.u.id}"
							enctype="multipart/form-data">
							<h4>프로필 사진</h4>
							<c:choose>
								<c:when test="${empty sessionScope.u.profileImage}">
									<div class="box"
										style="background: #BDBDBD; margin-right: 20px">
										<img class="profile"
											src="http://k.kakaocdn.net/dn/dpk9l1/btqmGhA2lKL/Oz0wDuJn1YV2DIn92f6DVK/img_640x640.jpg">
									</div>
								</c:when>
								<c:otherwise>
									<div id="imagePreview" class="box "
										style="background: #BDBDBD; margin-right: 20px;">
										<img id="image"
											src="/resources/upload/profile/${sessionScope.u.profileImage }"
											class="profile">
									</div>
									<div class="input-group-icon mt-10" style="width: 30%">
										<input type="file" name="files" class="single-input"
											onchange="previewImage(this)"> <input type="hidden"
											name="nofile" value="${sessionScope.u.profileImage }">
									</div>
								</c:otherwise>
							</c:choose>
							<hr>
							<h4>아이디(메일)</h4>
							<div class="mt-10">
								<input type="text" name="id" class="single-input"
									value="${sessionScope.u.id }" style="background: #E2E2E2;"
									readonly> <input type="hidden"
									value="${sessionScope.u.id}@naver.com" name="email" />
							</div>
							<hr>
							<h4>비밀번호</h4>
							<div class="mt-10">
								<input type="password" name="pw" required class="single-input"
									value="${sessionScope.u.pw }">
							</div>
							<hr>
							<h4>이름</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input type="text" name="name" style="background: #E2E2E2;"
									class="single-input" value="${sessionScope.u.name }" readonly>
							</div>
							<hr>
							<h4>주소</h4>
							<span><input type="button"
								class="genric-btn primary-border d-none d-lg-block"
								style="border: 1;" onclick="findAddress()" value="주소 찾기"></span>
							<div class="input-group-icon mt-10">
								<input type="hidden" id="sample2_extraAddress">

								<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
								<div id="layer"
									style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
									<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
										id="btnCloseLayer"
										style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
										onclick="closeDaumPostcode()" alt="닫기 버튼">
								</div>
								<input type="text" name="address" id="address"
									placeholder="주소를 입력해주세요" required class="single-input"
									value="${sessionScope.u.address }" readonly> <br>
								<input type="text" name="detailAddress" id="detailAddress"
									placeholder="상세주소를 입력해주세요" required class="single-input"
									value="${sessionScope.u.detailAddress }">
							</div>
							<hr>
							<h4>전화번호</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input class="single-input" type="text" name="phone"
									value="${sessionScope.u.phone }">
							</div>
							<hr>
							<h4>생년월일</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input type="text" name="birth" class="single-input"
									value="${sessionScope.u.birth }" style="background: #E2E2E2;"
									readonly>
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
								<c:choose>
									<c:when test="${sessionScope.u.gender eq '남' }">
										<label for="male">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="male" value="M"
													checked onclick="return(false);">남자
											</div>
										</label>
										<label for="female">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="female" value="F"
													onclick="return(false);">여자
											</div>
										</label>
									</c:when>
									<c:otherwise>
										<label for="male">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="male" value="M"
													onclick="return(false);">남자
											</div>
										</label>
										<label for="female">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="female" value="F"
													checked onclick="return(false);">여자
											</div>
										</label>
									</c:otherwise>
								</c:choose>
							</div>
							<hr>
							<div style="text-align: center;">
								<input type="submit" value="정 보 수 정"
									class="genric-btn primary e-large"
									style="width: 300px; font-size: x-large; font-weight: bold;">
							</div>
						</form>
					</c:when>
					<c:when test="${sessionScope.kakao.type eq 'm' }">
						<form method="POST" action="/kakaoUpdate.do"
							enctype="multipart/form-data">
							<h4>프로필 사진</h4>
							<c:choose>
								<c:when test="${empty sessionScope.u.profileImage}">
									<div class="box"
										style="background: #BDBDBD; margin-right: 20px">
										<img class="profile"
											src="http://k.kakaocdn.net/dn/dpk9l1/btqmGhA2lKL/Oz0wDuJn1YV2DIn92f6DVK/img_640x640.jpg">
									</div>
								</c:when>
								<c:otherwise>
									<div id="imagePreview" class="box "
										style="background: #BDBDBD; margin-right: 20px;">
										<img id="image"
											src="/resources/upload/profile/${sessionScope.kakao.profileImage }"
											class="profile">
									</div>
									<div class="input-group-icon mt-10" style="width: 30%">
										<input type="file" name="files" class="single-input"
											onchange="previewImage(this)"> <input type="hidden"
											name="nofile" value="${sessionScope.kakao.profileImage }">
									</div>
								</c:otherwise>
							</c:choose>
							<hr>
							<h4>아이디(메일)</h4>
							<div class="mt-10">
								<input type="text" name="email" class="single-input"
									value="${sessionScope.kakao.email }"
									style="background: #E2E2E2;" readonly>
							</div>
							<hr>
							<h4>비밀번호</h4>
							<div class="mt-10">
								<input type="password" name="pw" required class="single-input"
									value="${sessionScope.user.pw }">
							</div>
							<hr>
							<h4>이름</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input type="text" name="name" style="background: #E2E2E2;"
									class="single-input" value="${sessionScope.kakao.name }"
									readonly>
							</div>
							<hr>
							<h4>주소</h4>
							<span><input type="button"
								class="genric-btn primary-border d-none d-lg-block"
								style="border: 1;" onclick="findAddress()" value="주소 찾기"></span>
							<div class="input-group-icon mt-10">
								<input type="hidden" id="sample2_extraAddress">

								<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
								<div id="layer"
									style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
									<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
										id="btnCloseLayer"
										style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
										onclick="closeDaumPostcode()" alt="닫기 버튼">
								</div>
								<input type="text" name="address" id="address"
									placeholder="주소를 입력해주세요" required class="single-input"
									value="${sessionScope.user.address }" readonly> <br>
								<input type="text" name="detailAddress" id="detailAddress"
									placeholder="상세주소를 입력해주세요" required class="single-input"
									value="${sessionScope.user.detailAddress }">
							</div>
							<hr>
							<h4>전화번호</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input class="single-input" type="text" name="phone"
									value="${sessionScope.user.phone }">
							</div>
							<hr>
							<h4>생년월일</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input type="text" name="birth" class="single-input"
									value="${sessionScope.kakao.birth }"
									style="background: #E2E2E2;" readonly>
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
								<c:choose>
									<c:when test="${sessionScope.kakao.gender eq '남' }">
										<label for="male">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="male" value='남'
													checked onclick="return(false);">남자
											</div>
										</label>
										<label for="female">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="female" value='여'
													onclick="return(false);">여자
											</div>
										</label>
									</c:when>
									<c:otherwise>
										<label for="male">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="male" value='남'
													onclick="return(false);">남자
											</div>
										</label>
										<label for="female">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="female" value='여'
													checked onclick="return(false);">여자
											</div>
										</label>
									</c:otherwise>
								</c:choose>
							</div>
							<hr>
							<div style="text-align: center;">
								<input type="submit" value="정 보 수 정"
									class="genric-btn primary e-large"
									style="width: 300px; font-size: x-large; font-weight: bold;">
							</div>
						</form>
					</c:when>
					<c:otherwise>
						<form method="POST" action="/updateMember.do"
							enctype="multipart/form-data">
							<h4>프로필 사진</h4>
							<div id="imagePreview" class="box "
								style="background: #BDBDBD; margin-right: 20px;">
								<img id="image"
									src="/resources/upload/profile/${sessionScope.u.profileImage }"
									class="profile">
							</div>
							<div class="input-group-icon mt-10" style="width: 30%">
								<input type="file" name="files" class="single-input"
									onchange="previewImage(this)"> <input type="hidden"
									name="nofile" value="${sessionScope.u.profileImage }">
							</div>
							<hr>
							<h4>아이디(메일)</h4>
							<div class="mt-10">
								<input type="text" name="email" class="single-input"
									value="${sessionScope.u.id }" readonly>
							</div>
							<hr>
							<h4>비밀번호 변경</h4>
							<a href="/pwCheck.do"><button
									class="genric-btn primary-border" type="button">비밀번호변경</button></a>
							<hr>
							<h4>이름</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input type="text" name="name" class="single-input"
									value="${sessionScope.u.name }" readonly>
							</div>
							<hr>
							<h4>주소</h4>
							<span><input type="button"
								class="genric-btn primary-border d-none d-lg-block"
								style="border: 1;" onclick="findAddress()" value="주소 찾기"></span>
							<div class="input-group-icon mt-10">
								<input type="hidden" id="sample2_extraAddress">

								<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
								<div id="layer"
									style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
									<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
										id="btnCloseLayer"
										style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
										onclick="closeDaumPostcode()" alt="닫기 버튼">
								</div>
								<input type="text" name="address" id="address"
									placeholder="주소를 입력해주세요" required class="single-input"
									value="${sessionScope.u.address }" readonly> <br>
								<input type="text" name="detailAddress" id="detailAddress"
									placeholder="상세주소를 입력해주세요" required class="single-input"
									value="${sessionScope.u.detailAddress }">
							</div>
							<hr>
							<h4>전화번호</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input class="single-input" type="text" name="phone"
									value="${sessionScope.u.phone }">
							</div>
							<hr>
							<h4>생년월일</h4>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input type="text" name="birth" class="single-input"
									value="${sessionScope.u.birth }" readonly>
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
								<c:choose>
									<c:when test="${sessionScope.u.gender eq '남' }">
										<label for="male">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="male" value="남자"
													checked onclick="return(false);">남자
											</div>
										</label>
										<label for="female">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="female" value="여자"
													onclick="return(false);">여자
											</div>
										</label>
									</c:when>
									<c:otherwise>
										<label for="male">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/male.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="male" value="남자"
													onclick="return(false);">남자
											</div>
										</label>
										<label for="female">
											<div
												style="width: 150px; height: 150px; background-image: url(/resources/img/female.png); background-size: cover; text-align: center;">
												<input type="radio" name="gender" id="female" value="여자"
													checked onclick="return(false);">여자
											</div>
										</label>
									</c:otherwise>
								</c:choose>
							</div>
							<hr>
							<div style="text-align: center;">
								<input type="submit" value="정 보 수 정"
									class="genric-btn primary e-large"
									style="width: 300px; font-size: x-large; font-weight: bold;">
							</div>
						</form>
					</c:otherwise>

				</c:choose>
				<hr>

			</div>
		</div>
	</div>
	<!--================ 마이페이지_정보변경 end =================-->
	<!--마이페이지_내일정-->
	<div class="section-top-border" style="display: none;" id="mytrip">
		<div class="container">
			<hr style="border: 1px solid black;">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head">
						<div class="serial">번호</div>
						<div class="percentage">제목</div>
						<div class="country">여행일자</div>
						<div class="visit">공개여부</div>
						<div class="visit">조회수</div>
						<div class="visit">좋아요수</div>
						<div class="visit">공유수</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ 마이페이지_내일정 end =================-->
	<!--마이페이지_구매이력-->
	<div class="section-top-border" style="display: none;" id="buylist">
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
						<div class="country">2021-06-21</div>
						<div class="visit">80,000원</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ 마이페이지_내일정 end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		var userId = "<c:out value='${sessionScope.u.id}'/>";
		$("#change").click(function() {
			if ($("#change_information").css("display") == "none") {
				$("#change_information").show();
				$("#mypage").hide();
				$("#mytrip").hide();
				$("#buylist").hide();
				$("#change").attr('class', 'genric-btn primary e-large');
				$("#trip").attr('class', 'genric-btn primary-border e-large');
				$("#buy").attr('class', 'genric-btn primary-border e-large');
			}
		});

		$("#trip")
				.click(
						function() {
							if ($("#mytrip").css("display") == "none") {
								$("#mytrip").show();
								$("#change_information").hide();
								$("#mypage").hide();
								$("#buylist").hide();
								$("#trip").attr('class',
										'genric-btn primary e-large');
								$("#change").attr('class',
										'genric-btn primary-border e-large');
								$("#buy").attr('class',
										'genric-btn primary-border e-large');

								// Plan 리스트 출력할 ajax
								$
										.ajax({
											url : "selectPlanList.do",
											type : "POST",
											data : {
												id : userId
											},
											success : function(data) {
												if (data != null) {
													for (var i = 0; i < data.length; i++) {
														var table = "<div class='table-row'>";
														table += "<div class='serial'>"
																+ (i + 1)
																+ "</div>";
														table += "<div class='percentage'>"
																+ data[i].planTitle
																+ "</div>";
														table += "<div class='country'>"
																+ data[i].planStart
																+ "</div>";
														table += "<div class='visit'>"
																+ data[i].planPublic
																+ "</div>";
														table += "<div class='visit'>"
																+ data[i].planView
																+ "</div>";
														table += "<div class='visit'>"
																+ data[i].planLike
																+ "</div>";
														table += "<div class='visit'>"
																+ data[i].planShare
																+ "</div>";
														table += "</div>";
														$(".progress-table")
																.eq(0).append(
																		table);
													}
												} else {
													table
															.append("<div class='percentage'>현재 등록 된 내 일정이 없습니다.</div>");
												}
											}
										});
							}
						});
		$("#buy").click(
				function() {
					if ($("#buylist").css("display") == "none") {
						$("#buylist").show();
						$("#change_information").hide();
						$("#mypage").hide();
						$("#mytrip").hide();
						$("#buy").attr('class', 'genric-btn primary e-large');
						$("#change").attr('class',
								'genric-btn primary-border e-large');
						$("#trip").attr('class',
								'genric-btn primary-border e-large');
					}
				});
	</script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// 우편번호 찾기 화면을 넣을 element
		var element_layer = document.getElementById('layer');

		function closeDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_layer.style.display = 'none';
		}

		function findAddress() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample2_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample2_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById("address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("detailAddress").focus();

							// iframe을 넣은 element를 안보이게 한다.
							// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
							element_layer.style.display = 'none';
						},
						width : '100%',
						height : '100%',
						maxSuggestItems : 5
					}).embed(element_layer);

			// iframe을 넣은 element를 보이게 한다.
			element_layer.style.display = 'block';

			// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
			initLayerPosition();
		}

		// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
		// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
		// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
		function initLayerPosition() {
			var width = 300; //우편번호서비스가 들어갈 element의 width
			var height = 400; //우편번호서비스가 들어갈 element의 height
			var borderWidth = 5; //샘플에서 사용하는 border의 두께

			// 위에서 선언한 값들을 실제 element에 넣는다.
			element_layer.style.width = width + 'px';
			element_layer.style.height = height + 'px';
			element_layer.style.border = borderWidth + 'px solid';
			// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
			element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
					+ 'px';
			element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
					+ 'px';
		}

		function previewImage(f) {

			var file = f.files;

			// 확장자 체크
			if (!/\.(gif|jpg|jpeg|png)$/i.test(file[0].name)) {
				alert('gif, jpg, png 파일만 선택해 주세요.\n\n현재 파일 : ' + file[0].name);

				// 선택한 파일 초기화
				f.outerHTML = f.outerHTML;

				document.getElementById('imagePreview').innerHTML = '';

			} else {

				// FileReader 객체 사용
				var reader = new FileReader();

				// 파일 읽기가 완료되었을때 실행
				reader.onload = function(rst) {
					document.getElementById('imagePreview').innerHTML = '<img src="' + rst.target.result + '">';
				}

				// 파일을 읽는다
				reader.readAsDataURL(file[0]);

			}
		}
	</script>
</body>
</html>