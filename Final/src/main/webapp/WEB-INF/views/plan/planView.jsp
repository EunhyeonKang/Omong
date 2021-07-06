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
						class="day dayBtn">DAY1</button>
					<c:forEach var="i" begin="2" end="${onePlan.planDay}" step="1">
						<button id="day${i }" class="day dayBtn">DAY${i }</button>
					</c:forEach>
					<hr>
				</div>
				<br>
				<c:forEach var="i" begin="1" end="${onePlan.planDay}">
				<div class="detail" style="width: 100%;">
					<h3 id='day'>DAY${i}</h3>
				</div>
				</c:forEach>
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
		
		$(".dayBtn").click(function(){
			var day = $(".dayBtn").index(this)+1;
			console.log(day);
			showDaySpots(day);
		});
		
	</script>
	<!-- 카카오 맵 api javascript key -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0069a695a69eb1289dd330cee4957ce8&libraries=services"></script>
	<!-- 카카오 맵 api 등록 스크립트 -->
	<script>
	
		// @6/30 Day 테이블 데이징 선언
		var day = 1;
		var test = new Array();
		$(document).ready(function(){
			var planNo = "${onePlan.planNo}";
			$.ajax({
				url: "/selectOnePlanDays.do",
				type: "POST",
				data: {planNo : planNo},
				success: function(data){
					days = data;
					for(var i=0; i<days.length; i++){
						displayPlaces(days[i]);
						if(days[i].dayDate == (day-1)){
							$(".detail").eq(day-1).append("<div class='day"+day+"'>"+days[i].dayTitle+"</div>");
						}
						
						days[i].latlng = new daum.maps.LatLng(days[i].dayLongitude, days[i].dayLatitude);
						if(i != 0){
							var linePath = [ days[i - 1].latlng, days[i].latlng ]
						};
						lineLine.setPath(linePath);
						
						var drawLine = new daum.maps.Polyline({
							map : map,
							path : linePath,
							strokeWeight : 4,
							strokeColor : '#bd4040',
							strokeOpacity : 1,
							strokeStyle : 'solid'
						});
						test.push(drawLine);
						distance = Math.round(lineLine.getLength());
						displayCircleDot(days[i].latlng, distance);
					}
				}
			});
		});


		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = { 
	        center: new kakao.maps.LatLng(33.402914, 126.331689), // 지도의 중심좌표
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
			// 지도에 표시되고 있는 폴리라인을 제거합니다
			for(var i=0; i<test.length; i++){
				test[i].setMap(null);
			}
			test = new Array();
			$(".detail").hide();
			$(".detail").eq(day-1).show();
			$(".day"+day).remove();
			for(var i=0; i<days.length; i++){
				if(days[i].dayDate == (day-1)){
					displayPlaces(days[i]);
					$(".detail").eq(day-1).append("<div class='day"+day+"'>"+days[i].dayTitle+"</div>");
					
					days[i].latlng = new daum.maps.LatLng(days[i].dayLongitude, days[i].dayLatitude);
					
					if(i != 0){
						var linePath = [ days[i - 1].latlng, days[i].latlng ]
					};
					
					lineLine.setPath(linePath);
					
					var drawLine = new daum.maps.Polyline({
						map : map,
						path : linePath,
						strokeWeight : 2,
						strokeColor : '#bd4040',
						strokeOpacity : 0.8,
						strokeStyle : 'solid'
					});
					
					distance = Math.round(lineLine.getLength());
					displayCircleDot(days[i].latlng, distance);
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

		// @07/06 마커 연결 라인 긋기
		var distanceOverlay;
		var dots = {};
		// @07/06 라인 객체
		var lineLine = new daum.maps.Polyline();
		// @07/06 거리 객체
		var distance;

		
		function displayCircleDot(position, distance){
			if(distance > 0){
				var distanceOverlay = new daum.maps.CustomOverlay({
					content : '<div class="dotOverlay"> 거리 <span class="number">' + distance + '</span>m</div>',
					position : position,
					yAnchor : 0,
					zIndex : 2
				});
				distanceOverlay.setMap(map);
			}
		}
	</script>
</body>
</html>