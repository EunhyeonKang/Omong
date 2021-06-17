<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모듈에 오신것을 환영합니다</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<!-- banner part start-->
	<section class="banner_part">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-lg-10">
					<div class="banner_text text-center">
						<div class="banner_text_iner">
							<img src="/resources/img/모들ver1.png" width="300px" height="300px">
							<form action="/search.do" method="GET">
								<input type="text" class="search" placeholder="검색어 입력">
								<i class="icon-search"></i> <input type="submit" value="검색"
									class="search-btn">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- banner part start-->
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>