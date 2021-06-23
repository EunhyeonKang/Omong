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
		<section class="breadcrumb breadcrumb_bg"  style="background-image: url(/resources/img/main2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>일정 등록</h2>
                            <p>여행일정 . 등록</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
    <!-- 일정등록페이지메인-->
    <br><br>
    <h2 style="margin-left: 45%;">일정등록</h3>
    <br>
    <h4 style="margin-left: 20%; float:left; margin-right:280px;">작성자 : user1</h4>
    <form action="/search.do" method="GET">
		<input type="text" placeholder="검색어 입력">
		<i class="icon-search"></i> <input type="submit" value="검색"class="search-btn">
	</form>
    <br>
    <div style="width:400px; float:left; margin-left:20%; text-align:center">
    	<h3 style="text-align:center">일정등록</h3>
    	<hr>
    	<h4 style="float:left">제목  </h4><div class="percentage"><input class="input-first" name="schedule_title" id="schedule_title" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder='제목을 입력하세요'></div>
    	<br>
    	<h4 style="float:left">기간  </h4><div class="percentage"><input name="schedule_startDate" id="schedule_startDate" type="date"> ~ <input name="schedule_endDate" id="schedule_endDate" type="date"></div>
    	<br>
    	<h4 style="float:left">인원  </h4><div class="percentage"><input class="input-first" name="countPeople" id="countPeople" type="number"></div>
    	<br>
    	<h4 style="float:left">구분  </h4><div class="percentage"><input class="input-first" name="schedule_title" id="schedule_title" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder='제목을 입력하세요'></div>
    	<br>
    	<h4 style="float:left">태그  </h4><div class="percentage"><input class="input-first" name="schedule_title" id="schedule_title" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder='제목을 입력하세요'></div>
    	<br>
    	<button class="genric-btn success">일정만들기</button>
    </div>
    <div id="map" style="height: 400px; width: 40%; margin: 0;">
	</div>
	<br>
		<section class="blog_area single-post-area section_padding">
		<div class="container" style="text-align:center">
			<hr style="border: 1px solid black;">
			<div class="progress-table-wrap" style="text-align:center">
				<div class="progress-table">
					<div class="table-head">
						<div class="serial">TIME</div>
						<div class="percentage">DAY1</div>
						<div class="percentage">DAY2</div>
						<div class="percentage">DAY3</div>
					</div>
				</div>
				<div class="progress-table">
					<div class="table-head">
						<div class="serial">09:00~</div>
						<div class="percentage">제주오름</div>
						<div class="percentage">제주오름</div>
						<div class="percentage">제주오름</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 일정등록페이지메인-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<!-- 카카오 맵 api javascript key -->
   	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0069a695a69eb1289dd330cee4957ce8"></script>
   	<!-- 카카오 맵 api 등록 스크립트 -->
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
 		mapOption = { 
        	center: new kakao.maps.LatLng(33.387496, 126.555218), // 지도의 중심좌표
        	level: 9 // 지도의 확대 레벨
	    };

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	</script>
</body>
</html>