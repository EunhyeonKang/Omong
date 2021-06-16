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
    <section class="event_part section_padding" style="height: 800px;  background-image: url(/resources/img/map.PNG);">
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
                            <a href="/img/산굼부리.jpg" class="gallery_img">
                               <img src="/resources/img/산굼부리.jpg" class="card-img-top" alt="">
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