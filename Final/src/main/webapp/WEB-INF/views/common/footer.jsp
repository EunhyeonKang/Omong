<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
 <script src="/resources/summernote/summernote-lite.js"></script>
<script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/summernote/summernote-lite.css"> 

<style>
input.button-add {
   padding: 10px;
    background-color: #ffc107;
    border: 0;
    color: #955900;
    border-radius: 10px;
    font-weight: bolder;    
    border: 3px solid white;
}
</style>
</head>
<body>
	<!-- footer part start-->
	<footer class="footer-area">
		<div style="height: 120px;">
			<div class="row justify-content-between" style="margin-left: 100px;">
				<div class="col-sm-6 col-md-5">
					<div style="width: 700px; float: left;">
						<h3 style="color: white;">고객센터</h3>
						<span><a href="https://open.kakao.com/o/sBWoUtld"><img src="/resources/img/kakao.jpg" style="width:50px;"/></a></span><br><br> 
						<!-- <input type="button" onClick="secdLinkDefault();" value="Default"/> -->
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
	<!--<script src="/resources/js/common/jquery-1.12.1.min.js"></script> datepicker충돌 로인해 주석처리 제거시 문제는 없어보임 -->

	
	<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> datepicker용 스크립트문 -->

</body>
<script>
	$("#dblclick").dblclick(function(){
		$(location).attr('href','/adminLogin1.do'); //네이버만 바꿔주면댐
	
	})
</script>

</html>