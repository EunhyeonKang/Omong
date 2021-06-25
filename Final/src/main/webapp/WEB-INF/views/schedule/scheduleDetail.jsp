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
   <div style="width: 100%; height: 800px; positon:relative;">
      <div id="map" style="width: 80%; height: 100%; float: left; ;">
      </div>
      <div id="search" style="width: 20%; height: 84%; float:left; position:absolute; right:20%; background-color:white; z-index:1000; opacity: 0.70; text-align:center; display:none">
         <br>
         <form>
         <input type="text" style="border: 1px solid blue" placeholder="검색어를 입력하세요">
         <input type="submit" style="border: 1px solid blue" value="검색">
         </form>
      </div>
      <hr>
      <div id="detailList"
         style="width: 20%; height: 100%; overflow: scroll;">
         <div id="detail_head" style="width: 100%; height: 15%;">
         	<button id="search_btn" style="float:left; border:0; background:white">검색</button>
            <h3 style="text-align: center; padding-top: 10px">여행 일정표</h3>
            <button id="day1" style="border: 0; background: white; margin-top: 15px">DAY1</button>
            <c:forEach var="i" begin="2" end="${diff }" step="1">
            <button id="day${i }" style="border: 0; background: white">DAY${i }</button>
            </c:forEach>
            <hr>
         </div>
         <br>
         <div class="detail" style="width: 100%;">
            <button id="plus1"  style="float:right; border:0px; background:white;">추가</button><button id="minus1"  style="float:right; border:0px; background:white;">삭제</button><h3>DAY1</h3>
         </div>
         <div class="detail" style="width: 100%;">
            <button id="plus2"  style="float:right; border:0px; background:white;">추가</button><button id="minus2"  style="float:right; border:0px; background:white;">삭제</button><h3>DAY2</h3>
         </div>
         <div class="detail" style="width: 100%;">
            <button id="plus3"  style="float:right; border:0px; background:white;">추가</button><button id="minus3"  style="float:right; border:0px; background:white;">삭제</button><h3>DAY3</h3>
         </div>
         <div class="detail" style="width: 100%;">
            <button id="plus4"  style="float:right; border:0px; background:white;">추가</button><button id="minus4"  style="float:right; border:0px; background:white;">삭제</button><h3>DAY4</h3>
         </div>
         <div class="detail" style="width: 100%;">
            <button id="plus5"  style="float:right; border:0px; background:white;">추가</button><button id="minus5"  style="float:right; border:0px; background:white;">삭제</button><h3>DAY5</h3>
         </div>
         <div class="detail" style="width: 100%;">
            <button id="plus6"  style="float:right; border:0px; background:white;">추가</button><button id="minus6"  style="float:right; border:0px; background:white;">삭제</button><h3>DAY6</h3>
         </div>
         <div class="detail" style="width: 100%;">
            <h3>DAY7</h3>
            <button id="plus7"  style="float:right; border:0px; background:white;">추가</button><button id="minus7"  style="float:right; border:0px; background:white;">삭제</button><div class="day7"></div>
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
      
      $("#plus1").click(function(){
    	 $(".detail").eq(0).append("<div class='day1'></div>") 
      });
      $("#plus2").click(function(){
     	 $(".detail").eq(1).append("<div class='day2'></div>") 
       });
      $("#plus3").click(function(){
     	 $(".detail").eq(2).append("<div class='day3'></div>") 
       });
      $("#plus4").click(function(){
     	 $(".detail").eq(3).append("<div class='day4'></div>") 
       });
      $("#plus5").click(function(){
     	 $(".detail").eq(4).append("<div class='day5'></div>") 
       });
      $("#plus6").click(function(){
     	 $(".detail").eq(5).append("<div class='day6'></div>") 
       });
      $("#plus7").click(function(){
     	 $(".detail").eq(6).append("<div class='day7'></div>") 
       });
      $("#minus1").click(function(){
    	 $(".day1").last().remove(); 
      });
      $("#minus2").click(function(){
     	 $(".day2").last().remove(); 
       });
      $("#minus3").click(function(){
     	 $(".day3").last().remove(); 
       });
      $("#minus4").click(function(){
     	 $(".day4").last().remove(); 
       });
      $("#minus5").click(function(){
     	 $(".day5").last().remove(); 
       });
      $("#minus6").click(function(){
     	 $(".day6").last().remove(); 
       });
      $("#minus7").click(function(){
     	 $(".day7").last().remove(); 
       });
      $("#search_btn").click(function(){
    	  if($("#search").css("display") == "none"){
				$("#search").show();
    	  }else{
    		  $("#search").hide();
    	  }
      });
   </script>
   
   <style>
      .detail {
         display: none;
      }
   </style>
</body>
</html>