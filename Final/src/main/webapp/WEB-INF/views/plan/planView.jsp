<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omong 일정 보기</title>
</head>
	<link rel="stylesheet" href="/resources/css/common/scheduleDetail.css">
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<div style="width: 100%; height:800px; positon: relative; display:flex;">
		<div class="map_wrap">
			<!-- 카카오 맵 -->
			<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
			<!-- 일정표 -->
			<div id="detailList" style="width: 15%; overflow-y: scroll; padding: 15px;">
				<div id="detail_head" style="width: 100%; height: 15%;">
					<h3 style="text-align: center; padding-top: 10px">여행 일정표</h3>
					<br>
					<button id="day1"
						class="day">DAY1</button>
					<c:forEach var="i" begin="2" end="${onePlan.planDay}" step="1">
						<button id="day${i }" class="day">DAY${i }</button>
					</c:forEach>
					<hr>
				</div>
				<br>
				<!-- @HC forEach로 단문 줄여볼 수 있도록 -->
				<div class="detail" style="width: 100%;">
					<h3>DAY1</h3>
				</div>
				<div class="detail" style="width: 100%;">
					<h3>DAY2</h3>
				</div>
				<div class="detail" style="width: 100%;">
					<h3>DAY3</h3>
				</div>
				<div class="detail" style="width: 100%;">
					<h3>DAY4</h3>
				</div>
				<div class="detail" style="width: 100%;">
					<h3>DAY5</h3>
				</div>
				<div class="detail" style="width: 100%;">
					<h3>DAY6</h3>
				</div>
				<div class="detail" style="width: 100%;">
					<h3>DAY7</h3>
					<div class="day7"></div>
				</div>
				<br>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>

	<script>
		var days = new Array();
		var planStart = "${onePlan.planStart}";
		$(function() {
			$(".detail").eq(0).show();
		});
		$("#day1").click(function() {
			day = 1;
			showDaySpots(day);
		});
		$("#day2").click(function() {
			day = 2;
			showDaySpots(day);
		});
		$("#day3").click(function() {
			day = 3;
			showDaySpots(day);
		});
		$("#day4").click(function() {
			day = 4;
			showDaySpots(day);
		});
		$("#day5").click(function() {
			day = 5;
			showDaySpots(day);
		});
		$("#day6").click(function() {
			day = 6;
			showDaySpots(day);
		});
		$("#day7").click(function() {
			day = 7;
			showDaySpots(day);
		});
	</script>
	<!-- 카카오 맵 api javascript key -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0069a695a69eb1289dd330cee4957ce8&libraries=services"></script>
	<!-- 카카오 맵 api 등록 스크립트 -->
	<script>
	
		// @6/30 Day 테이블 데이징 선언
		var day = 1;
		
		$(document).ready(function(){
			var planNo = "${onePlan.planNo}";
			$.ajax({
				url: "/selectOnePlanDays.do",
				type: "POST",
				data: {planNo : planNo},
				success: function(data){
					days = data;
					console.log(days);
				}
			});
		});

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = { 
	        center: new kakao.maps.LatLng(33.372202649734135, 126.52790662356396), // 지도의 중심좌표
	        level: 9 // 지도의 확대 레벨
	    };
		// **지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		// **@6/24 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		// **@6/24 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// **@6/24 kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		// **@6/24 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		
		
		
		
		
		
		
		
		
		
		
		var plan;
		// @07/01 Day 테이블 순서 키값 선언
		var spotNo = new Array();
		// @07/01 Day Vo 담을 변수 선언
		/* var spots = {}; */
		
		// @6/30 Day 테이블에 담을 객체 선언
		var place = null;

		// 마커를 담을 배열입니다
		var markers = [];
		var positions = new Array();


		

		// **검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});
		// @07/06 마커를 표출하기 위해 준비하는 함수입니다
		function showDaySpots(day){
			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();
			$(".detail").hide();
			$(".detail").eq(day-1).show();
			for(var i=0; i<days.length; i++){
				if(days[i].dayDate == (day-1)){
					displayPlaces(days[i]);
				}
			}
		}
		
		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(days) {
			console.log('함수 실행');
			var fragment = document.createDocumentFragment(),
				bounds = new kakao.maps.LatLngBounds()
				
			// 마커를 생성하고 지도에 표시합니다
			var placePosition = new kakao.maps.LatLng(days.dayLongitude, days.dayLatitude),
				marker = addMarker(placePosition)
			// LatLngBounds 객체에 좌표를 추가합니다
			bounds.extend(placePosition);
			
			(function(marker, days) {
				kakao.maps.event.addListener(marker, 'mouseover', function() {
					displayInfowindow(marker, days.dayTitle);
				});

				kakao.maps.event.addListener(marker, 'mouseout', function() {
					infowindow.close();
				});
			})(marker, days);
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position) {
			console.log('마커추가');
			var imageSrc = '/resources/img/marker.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(24, 35), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(24, 35), // 스프라이트 이미지의 크기
				offset : new kakao.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
				marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});
			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다
			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}


		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

	</script>
</body>
</html>