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
			<h3 style="float: left; margin-left: 40px;">자유게시판</h3>
		<button
			style="margin-left: 80%; background-color: orangered; width: 50x; height: 30px; color: white; text-decoration: bold; border: none;"><a href="boardWriteFrm.do">글쓰기</a></button>
			<hr style="border: 1px solid black;">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head">
						<div class="serial">번호</div>
						<div class="percentage">제목</div>
						<div class="country">작성자</div>
						<div class="visit">조회수</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage"><a href="/boardView.do">제목입니다</a></div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
					<div class="table-row">
						<div class="serial">01</div>
						<div class="percentage">제목입니다</div>
						<div class="country">
							<img src="/resources/img/elements/f1.jpg" alt="flag">Canada
						</div>
						<div class="visit">645032</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ Blog Area end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>