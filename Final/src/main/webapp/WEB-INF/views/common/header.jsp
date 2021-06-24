<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/resources/css/common/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="/resources/css/common/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="/resources/css/common/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet" href="/resources/css/common/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="/resources/css/common/flaticon.css">
<!-- fontawesome CSS -->
<link rel="stylesheet"
	href="/resources/css/commonfontawesome/css/all.min.css">
<!-- magnific CSS -->
<link rel="stylesheet" href="/resources/css/common/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/common/gijgo.min.css">
<!-- niceselect CSS -->
<link rel="stylesheet" href="/resources/css/common/nice-select.css">
<!-- slick CSS -->
<link rel="stylesheet" href="/resources/css/common/slick.css">
<!-- style CSS -->
<link rel="stylesheet" href="/resources/css/common/style.css">
</head>
<body>
	<!--::header part start::-->
	<header class="main_menu">

		</div>
		<div class="main_menu_iner">
			<div class="container">
				<div class="row align-items-center ">
					<div class="col-lg-12">
						<nav
							class="navbar navbar-expand-lg navbar-light justify-content-between">
							<a class="navbar-brand" href="index.jsp"> <img
								src="/resources/img/logo_3.png" style="width: 100px;"
								alt="logo">
							</a>
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div
								class="collapse navbar-collapse main-menu-item justify-content-center"
								id="navbarSupportedContent">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="/">메인</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="/map.do">제주도
											지도</a></li>
									<li class="nav-item"><a class="nav-link"
										href="packages.html">예약</a></li>
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="blog.html"
										id="navbarDropdown" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> 일정 </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a class="dropdown-item" href="blog.html">일정등록</a> <a
												class="dropdown-item" href="/schedule.do">일정공유</a>
										</div>
										</li>
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="/boardList.do"
										id="navbarDropdown_1" role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> 게시판 </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
											<a class="dropdown-item" href="/noticeList.do">공지사항</a> <a
												class="dropdown-item" href="/boardList.do">자유게시판</a> <a
												class="dropdown-item" href="elements.html">문의사항</a>
										</div></li>
									<li class="nav-item"><a class="nav-link"
										href="/mypage.do">마이페이지</a></li>
								</ul>
							</div>
							<c:choose>
								<c:when test="${empty sessionScope.userId && empty sessionScope.u.id}">
									<a href="/login.do" class="btn_1 d-none d-lg-block" style="background-color:#F18101;">로그인</a>
									<a href="/join.do" class="btn_1 d-none d-lg-block" style="margin-left: 1px; background-color:#F18101">회원가입</a>
								</c:when>
								<c:otherwise>
									<a href="https://kauth.kakao.com/oauth/logout?client_id=c4831aaf9adcbc5aa2f115cf6b83ac70&logout_redirect_uri=http://localhost:8082/logout.do" class="btn_1 d-none d-lg-block">로그아웃</a>
									<a href="/employeeMypage.do" class="btn_1 d-none d-lg-block" style="margin-left: 1px;">마이페이지</a>
								</c:otherwise>
							</c:choose>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	
</body>
</html>