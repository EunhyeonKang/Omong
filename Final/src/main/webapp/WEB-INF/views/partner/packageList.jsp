<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.schedule{
		justify-self: center;
	 	margin:10px;
	 	
	}
	.row{
		justify-content: center;
	}
	.top_place{
		width: 100%;
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
							<h2>상품 예약</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!-- hotel list css start-->
	<br>
	<h3 style="float: left; margin-left: 40px;">상품 리스트</h3>
	<a href="/topScheduleList.do"><button style="float:right; margin-right: 40px; background-color: orangered; width: 50x; height: 30px; color: white; text-decoration: bold; border: none;">더보기</button></a>
	<section class="top_place" style="margin-top: 50px; margin-bottom: 50px;">
		
		<hr style="border: solid 1px black;">
		<div class="container_reservation" style="width: 100%;">
			<div class="row" style="flex-wrap: nowrap; ">
				<c:forEach items="${list}" var="p">
					<div class="schedule">
						<div class="single_place" style="width :500px; margin:30px" >
							<img src="/resources/upload/package/${p.packageProductMainPicture}" alt="" style="width:100%;">
							<div class="hover_Text d-flex align-items-end justify-content-between">
								<div class="hover_text_iner">
									<a href="packageView.do?partnerNo=${p.partnerNo}" class="place_btn">상세보기</a>
									<h3 style="color:black;">${p.packageProductName}</h3>
									<p style="color:black;">${p.packageProductInfo}</p>
								</div>
								<div class="details_icon text-right">
									
								</div>
							</div>
						</div>
					</div>		
				</c:forEach>						
			</div>
		</div>
	</section>
	<!-- hotel list css end -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>

</html>