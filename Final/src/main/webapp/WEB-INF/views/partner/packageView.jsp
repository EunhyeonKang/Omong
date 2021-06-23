<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>상세페이지</title>
<style>
.mainPicture {
	height: 800px;
	position: relative;
	overflow: hidden;
	background-image: url(/resources/img/성산일출봉.jpg);
	background-size: cover;
	background-position: center;
	z-index: 1;
}

.contentBox {
	width: 450px;
	height: 500px;
	background-color: white;
	/* margin-top: 50px; */
	justify-content: flex-end;
	opacity: 0.8;
	padding: 30px;
	position:relative;
}

.contentBox * {
	margin: 10px;
	
	
}
#buyBtn{
	align-self: flex-end;
	position: absolute;
	bottom: 10px;
	left:35px;
}

.productSelect {
	width: 350px;
	height: 40px;
	font-size: 1.3em;
}
.content_iner h3{ 
	padding-bottom : 15px;
	padding-top : 15px;
}
</style>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<!-- banner part start-->
	<section class="mainPicture">
		<div class="container" style="">
			<div class="row align-items-center justify-content-end"
				style="height: 800px">
				<div class="contentBox ">
					<form style="display:flex-direction:column; ">
						<h2>페키지 명</h2>
						<h5>간단설명</h5>
						<select class="genric-btn primary productSelect"
							style="font-size: 1.1em;">
							<option value="">상품1</option>
							<option value="">상품2</option>
							<option value="">상품3</option>
						</select> <select class="genric-btn primary productSelect"
							style="font-size: 1.1em;">
							<option value="">옵션1</option>
							<option value="">옵션2</option>
							<option value="">옵션3</option>
						</select> 
						<input id="buyBtn" type="submit" class="genric-btn info-border" value="구매" style="width: 80%; height:40px; font-size: 1.3em; ">
					</form>
				</div>
			</div>
		</div>
	</section>
	<section class="tour_details_content section_padding">
		<div class="container">
			<div class="row justify-content-start" >
				<div class="col-lg-6">
					<div class="content_iner" style="width:650px;" >
						<h3>이용안내</h3>
						<p> 유효기간내 사용하지 못한 입장권(이용권)은 환불되지 않습니다.<br>유효기간 : 구매일로 부터 60일 까지 사용 가능합니다.</p>
						<h3>이용제한 안내</h3>
						<p>본 상품은 렌터카, 자가운전자, 도보여행객 등 개별여행객만 사용이 가능합니다.<br>
						(일반 정기투어, 단체관광, 택시관광 등 기사를 동반한 여행인 경우 사용하실 수 없습니다.)<br> 
						타 할인(국가유공자, 장애인, 경로, 다른 할인 쿠폰 등)과 중복할인 불가합니다.</p>
						<h3>사용정보</h3>
						<p> 유효기간 : 구매일로 부터 60일 까지 사용 가능합니다.<br>
							사용여부 : 즉시 사용 불가<br>
							유의사항 : 구매하신 상품은 1시간 이후 사용 가능합니다.</p>
						<h3>안내사항</h3>
						<p>결제가 완료되면 카카오톡으로 바코드가 발송됩니다.(카카오톡 미사용자 문자메세지로 발송)<br>
							입장하시고자하는 관광지에 바코드 제시 후 이용바랍니다.<br>
							문자내용을 미숙지 하여 발생한 문제에 대하여 업체에서 책임을 지지 않으므로 반드시 확인 부탁드립니다.</p>
						<h3>취소/환불</h3>
						<p> 쿠폰 오 사용 시 정당한 사유가 아니라면 사용취소가 불가능하므로 주의하시기 바랍니다.<br>
							(단, 예약상품중 천재지변으로 인해 이용못하신 쿠폰은 환불해 드립니다.)<br>
							사용완료 후 정당한 사유로 인하여 환불처리되신 금액은 취소처리일로부터 3~5일 후 카드부분취소 및 계좌송금처리 됩니다.</p>
						<h3>판매처정보</h3>
							<p>
							판매자명 : 하이제주 - 제주도 관광협회<br>
							관광지 이용 문의는 '아래 연락처'가 아닌 페이지 상단 '이용안내'에 있는 전화번호로 연락 바랍니다<br>
							연락처 : 064-741-8782<br>
							홈페이지 : http://www.hijeju.or.kr/
							</p>						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- banner part start-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>