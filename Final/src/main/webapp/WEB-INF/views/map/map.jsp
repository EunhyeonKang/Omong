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
                            <h2>제주도 지도</h2>
                            <p>Jeju . Map</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <br><br><br><br><br>
    <!--top place start-->
    <section class="event_part section_padding" id="map" style="height: 800px; width: 70%; margin: 0 auto;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="event_slider owl-carousel" >
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
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
    <!--top place end-->

    <!--::industries start::-->
     <!--::gallery part start::-->
     <section class="our_gallery section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>제주 관광명소</h2>
                        <p>제주 각지의 관광명소의 사진들을 소개합니다</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="card-columns">
                        <div class="card">
                            <a href="/img/sangom.jpg" class="gallery_img">
                               <img src="/resources/img/sangom.jpg" class="card-img-top" alt="">
                            </a>
                        </div>
                        <div class="card">
                            <a href="/img/성산일출봉.jpg" class="gallery_img">
                                <img src="/resources/img/성산일출봉.jpg" class="card-img-top" alt="">
                            </a>
                        </div>
                        <div class="card">
                            <a href="/img/쇠소깍.jpg" class="gallery_img">
                                <img src="/resources/img/쇠소깍.jpg" class="card-img-top" alt="">
                            </a>
                        </div>
                        <div class="card">
                            <a href="/img/올레길 10코스.jpg" class="gallery_img">
                                <img src="/resources/img/올레길 10코스.jpg" class="card-img-top" alt="">
                            </a>
                        </div>
                        <div class="card">
                            <a href="/img/우도.jpg" class="gallery_img">
                                <img src="/resources/img/우도.jpg" class="card-img-top" alt="">
                            </a>
                        </div>
                      </div>
                </div>
            </div>
        </div>
    </section>
    <!--::gallery part end::-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>