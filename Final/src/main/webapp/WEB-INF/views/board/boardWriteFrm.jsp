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
	<section class="breadcrumb breadcrumb_bg" style="background-image: url(/resources/img/main2.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2>게시판</h2>
							<p>게시판 . 자유게시판</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!--================Blog Area =================-->
	<section class="blog_area single-post-area section_padding">
		<div class="container">
			<h3>자유게시판</h3>
			<hr style="border: 1px solid black;">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head">
						<div class="serial">제목</div>
						<div class="percentage"><input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder='제목을 입력하세요'></div>
						<div class="serial">작성자</div>
						<div class="percentage"><input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''" ></div>
					</div>
					<div class="table-row">
					<div class="serial">첨부파일</div>
						<div class="percentage"><input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''" ></div>
						<div class="serial">작성일</div>
						<div class="percentage"><input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''" ></div>
					</div>
					<div class="table-row">
						<div class="serial">내용</div>
						<div style="width: 80%"> <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder='Enter Message'></textarea></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ Blog Area end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>