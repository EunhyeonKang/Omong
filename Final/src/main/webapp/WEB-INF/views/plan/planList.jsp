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
	<section class="breadcrumb breadcrumb_bg"style="background-image: url(/resources/img/main2.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2>일정</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->
	<!-- hotel list css start-->
	<br>
	<h3 style="float: left; margin-left: 40px;">추천일정</h3>
	<a href="/topPlanList.do"><button style="float:right; margin-right: 40px; background-color: orangered; width: 50x; height: 30px; color: white; text-decoration: bold; border: none;">더보기</button></a>
	<section class="top_place" style="margin-top: 50px; margin-bottom: 50px;">
		
		<hr style="border: solid 1px black;">
		<div class="container_reservation" style="width: 100%;">
			<div class="row" style="flex-wrap: nowrap; ">
				<c:forEach items="${recommendList }" var="plan" varStatus="i">
				<div class="schedule">
					<div class="single_place" style="width : 90%; margin:30px" >
						<img src="/resources/img/single_place_${i.count}.png" alt="">
						<div
							class="hover_Text d-flex align-items-end justify-content-between">
							<div class="hover_text_iner">
								<a href="#" class="place_btn">태그..?</a>
								<h3>${plan.planTitle}</h3>
								<p>${plan.planStart} ~ ${plan.planEnd}</p>
								<div class="place_review">
									<a href="#"><i class="fas fa-star">아님 여기에 태그?</i></a>
									<div>
										<span>${plan.planView } views |</span>
										<span>${plan.planLike } likes |</span>
										<span>${plan.planShare } share</span>
									</div>
								</div>
							</div>
							<div class="details_icon text-right">
								<i class="ti-share"></i>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<br><br>
	<h3 style="float: left; margin-left: 40px;">최신일정</h3>
	<a href="/topScheduleList.do"><button style="float:right; margin-right: 40px; background-color: orangered; width: 50x; height: 30px; color: white; text-decoration: bold; border: none;">더보기</button></a>
	<section class="top_place" style="margin-top: 50px; margin-bottom: 50px;">
		
		<hr style="border: solid 1px black;">
		<div class="container_reservation" style="width: 100%;">
			<div class="row" style="flex-wrap: nowrap; ">
				<c:forEach items="${newList }" var="plan" varStatus="i">
				<div class="schedule">
					<div class="single_place" style="width : 90%; margin:30px" >
						<img src="/resources/img/single_place_${i.count}.png" alt="">
						<div
							class="hover_Text d-flex align-items-end justify-content-between">
							<div class="hover_text_iner">
								<a href="#" class="place_btn">태그..?</a>
								<h3>${plan.planTitle}</h3>
								<p>${plan.planStart} ~ ${plan.planEnd}</p>
								<div class="place_review">
									<a href="#"><i class="fas fa-star">아님 여기에 태그?</i></a>
									<div>
										<span>${plan.planView } views |</span>
										<span>${plan.planLike } likes |</span>
										<span>${plan.planShare } share</span>
									</div>
								</div>
							</div>
							<div class="details_icon text-right">
								<i class="ti-share"></i>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<br><br>
	<h3 style="float: left; margin-left: 40px;">가장 많이 찾아 본 일정</h3>
	<a href="/topScheduleList.do"><button style="float:right; margin-right: 40px; background-color: orangered; width: 50x; height: 30px; color: white; text-decoration: bold; border: none;">더보기</button></a>
	<section class="top_place" style="margin-top: 50px; margin-bottom: 50px;">
		
		<hr style="border: solid 1px black;">
		<div class="container_reservation" style="width: 100%;">
			<div class="row" style="flex-wrap: nowrap; ">
				<c:forEach items="${viewList }" var="plan" varStatus="i">
				<div class="schedule">
					<div class="single_place" style="width : 90%; margin:30px" >
						<img src="/resources/img/single_place_${i.count}.png" alt="">
						<div
							class="hover_Text d-flex align-items-end justify-content-between">
							<div class="hover_text_iner">
								<a href="#" class="place_btn">태그..?</a>
								<h3>${plan.planTitle}</h3>
								<p>${plan.planStart} ~ ${plan.planEnd}</p>
								<div class="place_review">
									<a href="#"><i class="fas fa-star">아님 여기에 태그?</i></a>
									<div>
										<span>${plan.planView } views |</span>
										<span>${plan.planLike } likes |</span>
										<span>${plan.planShare } share</span>
									</div>
								</div>
							</div>
							<div class="details_icon text-right">
								<i class="ti-share"></i>
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