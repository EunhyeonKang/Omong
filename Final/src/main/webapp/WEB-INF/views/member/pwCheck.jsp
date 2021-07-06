<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.js"></script>
<style>
form {
	display: none;
	margin-top: 100px;
}
</style>
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
	<div class="section-top-border" style="margin-left: 30%;" id="mypage">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<hr>
				<h4>현재 비밀번호</h4>
				<div class="mt-10">
					<input type="password" name="pwCheck" placeholder="현재 비밀번호"
						required class="single-input"
						style="float: left; width: 60%; margin-right: 20%;">
					<button class="genric-btn primary-border" onclick="checkPw();">확인</button>
				</div>
				<hr>
				<form action="/pwChange.do" method="post">
					<h4>새 비밀번호</h4>
					<input name="email" type="hidden" value="${sessionScope.u.id }">
					<input type="password" name="pw" placeholder="새 비밀번호" required
						class="single-input"
						style="float: left; width: 60%; margin-right: 20%;"> 
					<button class="genric-btn primary-border" type="submit" >변경</button>
				</form>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		function checkPw() {
			var email = $("[name=email]").val();
			var pw = $("[name=pwCheck]").val();
			$.ajax({
				url : "/checkPw.do",
				data : {
					email : email,
					pw : pw
				},
				type : "post",
				success : function(data) {
					if (data == 1) {
						$("form").show();
					} else {
						alert("비밀번호를 확인해주세요.");
					}
				}
			});
		}
	</script>
</body>
</html>








