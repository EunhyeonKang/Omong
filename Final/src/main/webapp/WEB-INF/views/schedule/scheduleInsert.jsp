<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
    <h4 style="margin-left: 40%; float:left; margin-right:280px;">작성자 : user1</h4>
    <br>
    <div style="width:400px; margin-left:40%; text-align:center">
    	<br>
    		<form action="/scheduleDetail.do" method="GET">
		    	<h4 style="float:left; margin-right:20px">제목  </h4><div class="percentage"><input class="input-first" name="schedule_title" id="schedule_title" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder='제목을 입력하세요'></div>
		    	<br>
		    	<h4 style="float:left;">기간  </h4><div class="percentage"><input name="schedule_startDate" type="text" id="sDatepicker"> ~ <input name="schedule_endDate" id="eDatepicker" type="text"></div>
		    	<br>
		    	<h4 style="float:left; margin-right:20px">인원  </h4><div class="percentage"><input class="input-first" name="countPeople" id="countPeople" type="number" min="1" max="30"></div>
		    	<br>
		    	<h4 style="float:left; margin-right:20px">구분  </h4><div class="percentage"><input class="input-first" name="separation" id="separation" type="text" placeholder='레저와 체험'></div>
		    	<br>
		    	<h4 style="float:left; margin-right:20px">태그  </h4><div class="percentage"><input class="input-first" name="tag" id="tag" type="text" placeholder='#레저와 체험  #혼자'></div>
		    	<br>
		    	<input type="hidden" id="diff" name="diff">
		    	<button class="genric-btn success" type="submit" id="test1">일정만들기</button>
		    </form>
		    
    </div>
     <br>
     <br>
	<!-- 일정등록페이지메인-->
	<!-- footer part start-->
	<footer class="footer-area">
		<div style="height: 120px;">
			<div class="row justify-content-between" style="margin-left: 100px;">
				<div class="col-sm-6 col-md-5">
					<div style="width: 700px; float: left;">
						<h3 style="color: white;">고객센터</h3>
						<h3 style="color: white;">1544-3100</h3>
						<br>
						<h5 style="color: white;">운영시간 09:00 ~ 18:00</h5>
						<h5 style="color: white;">점심시간 12:00 ~ 13:00</h5>
						<h6 style="color: white;">(점심시산에는 상담업무가 제공되지 않습니다)</h6>
						<h6 style="color: rgb(136, 128, 128);">단체 문의 064-111-1111</h6>

					</div>
				</div>
				<div style="width: 600px;">
					<div>
						<a href="#"><h4
								style="color: white; float: left; padding-right: 30px;">회사소개</h4></a>
						<a href="#"><h4
								style="color: white; float: left; padding-right: 30px;">사업제휴</h4></a>
						<a href="#"><h4
								style="color: white; float: left; padding-right: 30px;">개인정보취급방침</h4></a>
						<a href="#"><h4
								style="color: white; float: left; padding-right: 30px;">이용약관</h4></a>
						<a href="#"><h4
								style="color: white; float: left; padding-right: 30px;">수집거부</h4></a><br>
						<br>
						<h5 style="color: rgb(136, 128, 128);">사업자번호 540-12-12345 |
							관광사업등록 제2021-11호 | 대표자 : 윤현철</h5>
						<h5 style="color: rgb(136, 128, 128);">개인정보관리책임자 : 권용찬 | 주소 :
							서울특별시 영등포구 선유2로 57</h5>

					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="copyright_part_text text-center">
						<p class="footer-text m-0">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="ti-heart" aria-hidden="true"></i> by 
								<a  target="_blank" id="dblclick"> (주) 모들</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- jquery plugins here-->
	<!-- <script src="/resources/js/common/jquery-1.12.1.min.js"></script> datepicker충돌 로인해 주석처리 제거시 문제는 없어보임 -->
	<!-- popper js -->
	<script src="/resources/js/common/js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="/resources/js/common/js/bootstrap.min.js"></script>
	<!-- magnific js -->
	<script src="/resources/js/common/js/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="/resources/js/common/js/owl.carousel.min.js"></script>
	<!-- masonry js -->
	<script src="/resources/js/common/js/masonry.pkgd.js"></script>
	<!-- masonry js -->
	<script src="/resources/js/common/js/jquery.nice-select.min.js"></script>
	<script src="/resources/js/common/js/gijgo.min.js"></script>
	<!-- contact js -->
	<script src="/resources/js/common/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/js/common/js/jquery.form.js"></script>
	<script src="/resources/js/common/js/jquery.validate.min.js"></script>
	<script src="/resources/js/common/js/mail-script.js"></script>
	<script src="/resources/js/common/js/contact.js"></script>
	<!-- custom js -->
	<script src="/resources/js/common/js/custom.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> datepicker용 스크립트문 -->
</body>
<script>
	$("#dblclick").dblclick(function(){
		$(location).attr('href','http://naver.com'); //네이버만 바꿔주면댐
	
	})
</script>
</html>
	<script>
	$(function() {
	    //모든 datepicker에 대한 공통 옵션 설정
	    var thisDate = new Date();
	    var thisYear = thisDate.getFullYear();        //해당 연
	    var thisMonth = thisDate.getMonth() + 1;    //해당 월

	    $.datepicker.setDefaults({
	        dateFormat: 'yy-mm-dd'         //Input Display Format 변경
	        ,showOtherMonths: true         //빈 공간에 현재월의 앞뒤월의 날짜를 표시
	        ,showMonthAfterYear:true     //년도 먼저 나오고, 뒤에 월 표시
	        ,changeYear: true             //콤보박스에서 년 선택 가능
	        ,changeMonth: true             //콤보박스에서 월 선택 가능         
	        ,yearSuffix: "년"             //달력의 년도 부분 뒤에 붙는 텍스트
	        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']                     //달력의 월 부분 텍스트
	        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
	        ,dayNamesMin: ['일','월','화','수','목','금','토']                                         //달력의 요일 부분 텍스트
	        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일']                 //달력의 요일 부분 Tooltip 텍스트
	        ,minDate : new Date()
	    });                    
	    
	    //시작일의 초기값을 설정
	    $('#sDatepicker').datepicker({
	        onClose: function( selectedDate ) {    
	            $("#eDatepicker").datepicker( "option", "minDate", selectedDate );
	            // 시작일(sDatepicker) datepicker가 닫힐때
	            // 종료일(eDatepicker)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
	        }                
	    });
	    $('#sDatepicker').datepicker('setDate', new Date());    //시작일 초기값 셋팅
	    
	    //종료일의 초기값을 내일로 설정
	    $('#eDatepicker').datepicker({
	        onClose: function( selectedDate ) {
	            
	            // 종료일(eDatepicker) datepicker가 닫힐때
	            // 시작일(eDatepicker)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
	        }
	    });
	    $('#eDatepicker').datepicker('setDate', 'today');                        //끝일 초기값 셋팅
	});
	    
	    $("#test1").click(function(e){
	    	var d1 = $('#sDatepicker').datepicker('getDate');
            var d2 = $('#eDatepicker').datepicker('getDate');
            var diff = 0;
            diff = Math.floor((d2.getTime() - d1.getTime()) / 86400000);
            if(diff > 7){
            	alert("최대 7일까지 가능합니다");
            	e.preventDefault();
            }else{
            	$("#diff").val(diff+1);	
            }
	    });
	</script>
</body>
</html>
