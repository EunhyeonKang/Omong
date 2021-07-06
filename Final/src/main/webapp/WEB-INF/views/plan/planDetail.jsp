<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omong 일정 작성</title>
</head>
	<link rel="stylesheet" href="/resources/css/common/scheduleDetail.css">
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<div style="width: 100%; height:800px; positon: relative; display:flex;">
		<div class="map_wrap">
			<!-- 카카오 맵 -->
			<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
			<!-- 검색 리스트 창 -->
			<div id="menu_wrap" class="bg_white">
				<div class="option">
					<div>
						<form onsubmit="searchPlaces(); return false;">
							<input type="hidden" value="제주도" id="title" size="15">
							<input type="text" value="" id="keyword" size="15" class="keyword" placeholder="검색어 입력">
							<button type="submit" class="submit">검색하기</button>
						</form>
					</div>
				</div>
				<hr>
				<ul id="placesList"></ul>
				<div id="pagination"></div>
			</div>
			<button id="cancle">
			>
			</button>
			<!-- 일정표 -->
			<div id="detailList" style="width: 15%; overflow-y: scroll; padding: 15px;">
				<div id="detail_head" style="width: 100%; height: 15%;">
					<h3 style="text-align: center; padding-top: 10px">여행 일정표</h3>
					<br>
					<button id="day1"
						class="day">DAY1</button>
					<c:forEach var="i" begin="2" end="${diff }" step="1">
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
				<button id="save" class="save" onclick="savePlan();">저장하기</button>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>

	<script>
		$(function() {
			$(".detail").eq(0).show();
		});
		$("#day1").click(function() {
			day = 1;
			$(".detail").hide();
			$(".detail").eq(0).show();
		});
		$("#day2").click(function() {
			day = 2;
			$(".detail").hide();
			$(".detail").eq(1).show();
		});
		$("#day3").click(function() {
			day = 3;
			$(".detail").hide();
			$(".detail").eq(2).show();
		});
		$("#day4").click(function() {
			day = 4;
			$(".detail").hide();
			$(".detail").eq(3).show();
		});
		$("#day5").click(function() {
			day = 5;
			$(".detail").hide();
			$(".detail").eq(4).show();
		});
		$("#day6").click(function() {
			day = 6;
			$(".detail").hide();
			$(".detail").eq(5).show();
		});
		$("#day7").click(function() {
			day = 7;
			$(".detail").hide();
			$(".detail").eq(6).show();
		});
	</script>
	<!-- 카카오 맵 api javascript key -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0069a695a69eb1289dd330cee4957ce8&libraries=services"></script>
	<!-- 카카오 맵 api 등록 스크립트 -->
	<script>
		var plan;
		// @07/01 Day 테이블 순서 키값 선언
		var spotNo = new Array();
		// @07/01 Day Vo 담을 변수 선언
		/* var spots = {}; */
		var days = new Array();
		// @6/30 Plan 테이블에 담을 객체 선언
		$(function(){
			$.ajax({
				url : "/getPlan.do",
				success:function(data){
					plan = data;
				}
			});
			for(var i=0; i<${diff}; i++){
				spotNo.push(0);
				var obj = {};
				days.push(obj);
			}
		});
		
		console.log(plan);
		// @6/30 Day 테이블에 담을 객체 선언
		var place = null;
		// @6/30 Day 테이블 데이징 선언
		var day = 1;
		// 마커를 담을 배열입니다
		var markers = [];
		var positions = new Array();

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			// 지도의 확대 레벨
			level : 3
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// @6/24 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		// @6/24 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// @6/24 kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		// @6/24 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

			var ti = document.getElementById('title').value;
			var sub = document.getElementById('keyword').value;
			var keyword = ti+sub;



			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces(data);
				console.log(data);
				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {
				alert('검색 결과가 존재하지 않습니다.');
				return;
			} else if (status === kakao.maps.services.Status.ERROR) {
				alert('검색 결과 중 오류가 발생했습니다.');
				return;
			}
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'),
				menuEl = document.getElementById('menu_wrap'),
				fragment = document.createDocumentFragment(),
				bounds = new kakao.maps.LatLngBounds(),
				listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {
				/*     	console.log(places[i]); */
				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
					marker = addMarker(placePosition),
					itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				marker.setDraggable(true);
				bounds.extend(placePosition);
				
				// @ 6/28 저장할 객체 정보 저장
				place = {address : places[i].address_name, lat : places[i].x, lng : places[i].y, title : places[i].place_name};
				(function(marker, title, place) {
					kakao.maps.event.addListener(marker, 'mouseover', function() {
						displayInfowindow(marker, title);
					});

					kakao.maps.event.addListener(marker, 'mouseout', function() {
						infowindow.close();
					});
					
					kakao.maps.event.addListener(marker, 'click', function() {
						// @ 6/29 마커 클릭 시 데이터 저장
						if(confirm('등록하시겠습니까?')){
							$(".detail").eq(day-1).append("<div class='day"+day+"'>"+place.title+"</div>");
							days[day-1][spotNo[day-1]++] = place;
						}else{
							return false;
						}
					});

					itemEl.onmouseover = function() {
						displayInfowindow(marker, title);
					};

					itemEl.onmouseout = function() {
						infowindow.close();
					};
					
					// @ 6/29 리스트 클릭 시 데이터 저장
					itemEl.onclick = function(){
						if(confirm('등록하시겠습니까?')){
							$(".detail").eq(day-1).append("<div class='day"+day+"'>"+place.title+"</div>");
							days[day-1][spotNo[day-1]++] = place;
						}else{
							return false;
						}
					};
				})(marker, places[i].place_name, place);

				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		}
		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var el = document.createElement('li'),
				itemStr = '<span class="markerbg marker_1"></span>'	+ '<div class="info">' + '   <h5>'	+ places.place_name	+ '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
						+ '   <span class="jibun gray">' + places.address_name
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'
					+ '</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position) {
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

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'),
				fragment = document.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
		
		// @ 7/1 save 저장후 DB에 저장하기
		function savePlan(){
			console.log(days);
			$.ajax({
				url: "insertPlan.do",
				type: "POST",
				data: {data:JSON.stringify(days)},
				traditional:true,				
				success: function(data){
					alert(data);
				}
			});
		}
		/*
		var lists = new Array();
		$(function(){
			var img = $("#map").children().first().children().first().children().last().find("img");
			$(document).on("click", "#map>div:first-child>div:first-child>div:last-child img", function() {
				img.draggable(true);
			});
			
			img.on("dragenter", function(e){
				e.stopPropagation();
				e.preventDefault();
				$("#detailList").css("border", "3px solid #F18101");
			});
			img.on("dragleave", function(e){
				e.stopPropagation();
				e.preventDefault();
				$("#detailList").css("border", "none");
			});
			img.on("dragover", function(e){
				3.stopPropagation();
				e.preventDefault();
				$("#detailList").css("border", "3px solid #F18101");
			});
			img.on("drop", function(e){
				e.preventDefault();
				var marker = e.originalEvent.dataTransfer.
				$(".detail").eq(0).append();
			});
		});
		*/
	</script>
	<script>
		$("#plus1").click(function() {
			day = 1;
			$(".detail").eq(0).append("<div class='day1'></div>")
		});
		$("#plus2").click(function() {
			day = 2;
			$(".detail").eq(1).append("<div class='day2'></div>")
		});
		$("#plus3").click(function() {
			day = 3;
			$(".detail").eq(2).append("<div class='day3'></div>")
		});
		$("#plus4").click(function() {
			day = 4;
			$(".detail").eq(3).append("<div class='day4'></div>")
		});
		$("#plus5").click(function() {
			day = 5;
			$(".detail").eq(4).append("<div class='day5'></div>")
		});
		$("#plus6").click(function() {
			day = 6;
			$(".detail").eq(5).append("<div class='day6'></div>")
		});
		$("#plus7").click(function() {
			day = 7;
			$(".detail").eq(6).append("<div class='day7'></div>")
		});
		$("#minus1").click(function() {
			$(".day1").last().remove();
		});
		$("#minus2").click(function() {
			$(".day2").last().remove();
		});
		$("#minus3").click(function() {
			$(".day3").last().remove();
		});
		$("#minus4").click(function() {
			$(".day4").last().remove();
		});
		$("#minus5").click(function() {
			$(".day5").last().remove();
		});
		$("#minus6").click(function() {
			$(".day6").last().remove();
		});
		$("#minus7").click(function() {
			$(".day7").last().remove();
		});
		$("#search_btn").click(function() {
			if ($("#search").css("display") == "none") {
				$("#search").show();
			} else {
				$("#search").hide();
			}
		});
		$("#cancle").click(function(){
			if($("#menu_wrap").css('display') == 'none'){
				$("#menu_wrap").show();
				$("#cancle").css({'left':'31%'});
				$("#cancle").html('<');
			}else{
				$("#menu_wrap").hide()
				$("#cancle").css({'left':'15%'});
				$("#cancle").html('>');
			}
		});
	</script>
</body>
</html>