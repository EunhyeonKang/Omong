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
   <div style="width: 100%; height: 800px;">
      <div id="map" style="width: 80%; height: 100%; float: right;"></div>
      <div id="detailList"
         style="width: 20%; height: 100%; overflow: scroll;">
         <div id="detail_head" style="width: 100%; height: 15%;">
            <h3 style="text-align: center; padding-top: 10px">여행 일정표</h3>
            <button id="day1"
               style="border: 0; background: white; margin-top: 15px">DAY1</button>
            <button id="day2" style="border: 0; background: white">DAY2</button>
            <button id="day3" style="border: 0; background: white">DAY3</button>
            <button id="day4" style="border: 0; background: white">DAY4</button>
            <button id="day5" style="border: 0; background: white">DAY5</button>
            <button id="day6" style="border: 0; background: white">DAY6</button>
            <button id="day7" style="border: 0; background: white">DAY7</button>
            <hr>

         </div>
         <br>
         <div class="detail" style="width: 100%;">
            <h3>DAY1</h3>
            <div class="day1"></div>
            <div class="day1"></div>
            <div class="day1"></div>
            <div class="day1"></div>
            <div class="day1"></div>
            <div class="day1"></div>
            <div class="day1"></div>
            <div class="day1"></div>
            <div class="day1"></div>
         </div>
         <div class="detail" style="width: 100%;">
            <h3>DAY2</h3>
            <div class="day2"></div>
            <div class="day2"></div>
            <div class="day2"></div>
            <div class="day2"></div>
            <div class="day2"></div>
            <div class="day2"></div>
         </div>
         <div class="detail" style="width: 100%;">
            <h3>DAY3</h3>
            <div class="day3"></div>
            <div class="day3"></div>
            <div class="day3"></div>
            <div class="day3"></div>
            <div class="day3"></div>
         </div>
         <div class="detail" style="width: 100%;">
            <h3>DAY4</h3>
            <div class="day4"></div>
            <div class="day4"></div>
            <div class="day4"></div>
            <div class="day4"></div>
            <div class="day4"></div>
            <div class="day4"></div>
         </div>
         <div class="detail" style="width: 100%;">
            <h3>DAY5</h3>
            <div class="day5"></div>
            <div class="day5"></div>
            <div class="day5"></div>
            <div class="day5"></div>
            <div class="day5"></div>
            <div class="day5"></div>
            <div class="day5"></div>
         </div>
         <div class="detail" style="width: 100%;">
            <h3>DAY6</h3>
            <div class="day6"></div>
            <div class="day6"></div>
            <div class="day6"></div>
            <div class="day6"></div>
            <div class="day6"></div>
            <div class="day6"></div>
            <div class="day6"></div>
            <div class="day6"></div>
         </div>
         <div class="detail" style="width: 100%;">
            <h3>DAY7</h3>
            <div class="day7"></div>
            <div class="day7"></div>
            <div class="day7"></div>
            <div class="day7"></div>
            <div class="day7"></div>
            <div class="day7"></div>
            <div class="day7"></div>
            <div class="day7"></div>
            <div class="day7"></div>
         </div>
      </div>
   </div>
   <%@include file="/WEB-INF/views/common/footer.jsp"%>

   
   <script>
      $(function() {
         $(".detail").eq(0).show();
      });
      $("#day1").click(function() {
         $(".detail").hide();
         $(".detail").eq(0).show();
      });
      $("#day2").click(function() {
         $(".detail").hide();
         $(".detail").eq(1).show();
      });
      $("#day3").click(function() {
         $(".detail").hide();
         $(".detail").eq(2).show();
      });
      $("#day4").click(function() {
         $(".detail").hide();
         $(".detail").eq(3).show();
      });
      $("#day5").click(function() {
         $(".detail").hide();
         $(".detail").eq(4).show();
      });      
      $("#day6").click(function() {
         $(".detail").hide();
         $(".detail").eq(5).show();
      });
      $("#day7").click(function() {
         $(".detail").hide();
         $(".detail").eq(6).show();
      });
      
   </script>
   <!-- 카카오 맵 api javascript key -->
   <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0069a695a69eb1289dd330cee4957ce8"></script>
   <!-- 카카오 맵 api 등록 스크립트 -->
   <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
      mapOption = {
         center : new kakao.maps.LatLng(33.387496, 126.555218), // 지도의 중심좌표
         level : 9
      // 지도의 확대 레벨
      };

      var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
   </script>
   
   <style>
      .detail {
         display: none;
      }
   </style>
</body>
</html>