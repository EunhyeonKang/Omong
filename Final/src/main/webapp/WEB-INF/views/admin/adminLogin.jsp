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
							<p>직원 . 관리자</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="section-top-border" style=" text-align: center;">
		<button class="genric-btn info e-large" id="admin_login"
			style="width: 250px; height: 100px; font-size: 20px; display:show;">관리자</button>
		<button class="genric-btn success e-large" id="employee_login"
		style="width: 250px; height: 100px; font-size: 20px; display:show;">직원</button>
		<div class="section-top-border" id="employee" style="margin:0 auto; width:480px; display:none;">
			<form action="/employeeLogin.do">
					<h4 style="text-align:left;">직원 아이디</h4>
					<div class="mt-10">
						<input type="text" name="id" placeholder="아이디를 입력해주세요"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'First Name'" required
							class="single-input">
					</div>
					<hr>
					<h4 style="text-align:left;">비밀번호</h4>
					<div class="mt-10">
						<input type="password" name="pw" placeholder="비밀번호를 입력해주세요"
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
		<div class="section-top-border" id="admin" style="margin:0 auto; width:480px; display:none;">
			<form action="/adminLogin.do">
					<h4 style="text-align:left;">관리자 아이디</h4>
					<div class="mt-10">
						<input type="text" name="adminid" placeholder="아이디를 입력해주세요"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'First Name'" required
							class="single-input">
					</div>
					<hr>
					<h4 style="text-align:left;">비밀번호</h4>
					<div class="mt-10">
						<input type="password" name="adminpw" placeholder="비밀번호를 입력해주세요"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Last Name'" required
							class="single-input">
					</div>
					<br><br>
					<div style="text-align : center;">
					<input type="submit" value="로 그 인" class="genric-btn info e-large" style="width:300px; font-size:x-large; font-weight:bold;">
					</div>
				</form>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		$("#admin_login").click(function(){
			if($("#admin").css("display") == "none"){
				$("#admin").show();
				$("#employee").hide();
				$("#admin_login").attr('class','genric-btn info e-large');
				$("#employee_login").attr('class','genric-btn success-border e-large');
			}
		});

		$("#employee_login").click(function(){
			if($("#employee").css("display") == "none"){
				$("#employee").show();
				$("#admin").hide();
				$("#admin_login").attr('class','genric-btn info-border e-large');
				$("#employee_login").attr('class','genric-btn success e-large');
			}
		});
	</script>
</body>
</html>