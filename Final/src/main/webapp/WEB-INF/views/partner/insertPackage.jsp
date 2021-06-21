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

	<div class="section-top-border" style="margin-left: 30%">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<h2 class="mb-30">패키지 등록</h2>
				<hr>
				<!-- 모자란거 대표사진 설명용사진? 판매할상품이름 / 옵션이름 / 가격  -->
				<!-- 패키지 이름 / 설명 / 대표사진 / 설명용사진 / 묶고 다음 버튼 -> 이용안내 / 이용제한 안내 / 사용정보 / 안내사항 / 취소 / 환불 / 판매자명 / 연락처 / 홈페이지 주소 -> 상품명 / 옵션이름 / 가격    -->
				<!-- 어케 묶어줘야할지 모르겠넹  -->
				<form action="#">
					<h4>패키지 이름</h4>
					<div class="mt-10"><!-- onfocus="this.placeholder = '텍스트창에 마우스 클릭했을때 띄울 메세지 '" 
											onblur="this.placeholder = '텍스트창에서 미입력 후 다른창으로 옮길때 띄울메세지'" required(미입력시 버튼누르면 입력해달라고 뜨게하는거) -->
						<input type="text" name="" placeholder=""
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = ''" required
							class="single-input">
					</div>
					<hr>
					<h4>패키지 설명</h4>
	                     <div class="mt-10">
	                         <textarea class="single-textarea" style="height:150px" placeholder="파트너님의 등록할 패키지의 간단한 설명을 적어주세요."></textarea>
	                     </div>
	                     <hr>
					<h4>이용안내</h4>
	                     <div class="mt-10">
	                         <textarea class="single-textarea" style="height:150px" placeholder="ex)유효기간내 사용하지 못한 입장권(이용권)은 환불되지않습니다. &#13;&#10;유효기간 :구매일로 부터60일 까지 사용 가능합니다."></textarea>
	                     </div>
	                     <hr>
					<h4>이용제한 안내</h4>
	                     <div class="mt-10">
	                         <textarea class="single-textarea" style="height:150px" placeholder="ex)본 상품은 렌터카, 자가운전자, 도보여행객 등 개별여행객만 사용이 가능합니다. &#13;&#10;(일반 정기투어,단체관광,택시관광 등 기사를 동반한 여행인 경우 사용하실 수 없습니다.)"></textarea>
	                     </div>
	                     <hr>
					<h4>사용정보</h4>
	                     <div class="mt-10">
	                         <textarea class="single-textarea" style="height:150px" placeholder="ex)유효기간 : 구매일로 부터60일 까지 사용 가능합니다. &#13;&#10;사용여부 : 즉시 사용 불가&#13;&#10;유의사항:구매하신 상품은 1시간 이후 사용 가능합니다."></textarea>
	                     </div>
	                     <hr>
					<h4>안내사항</h4>
	                     <div class="mt-10">
	                         <textarea class="single-textarea" style="height:150px" placeholder="ex)결제가 완료되면 카카오톡으로 바코드가 발송 됩니다.(카카오톡 미사용자 문자메세지로 발송)&#13;&#10;입장하시고자하는 관광지에 바코드 제시 후 이용바랍니다.&#13;&#10;문자내용을 미숙지 하여 발생한 문제에 대하여 업체에서 책임을 지지 않으므로 반드시 확인 부탁드립니다."></textarea>
	                     </div>
	                     <hr>
					<h4>취소 / 환불</h4>
	                     <div class="mt-10">
	                         <textarea class="single-textarea" style="height:160px" placeholder="ex)쿠폰 오 사용 시 정당한 사유가 아니라면 사용취소가 불가능하므로 주의하시기 바랍니다.&#13;&#10;(단, 예약상품중 천재지변으로 인해 이용못하신 쿠폰은 환불해 드립니다.)&#13;&#10;사용완료 후 정당한 사유로 인하여 환불처리되신 금액은 취소처리일로부터 3~5일 후 카드부분취소 및 계좌송금처리 됩니다."></textarea>
	                     </div>
	                     <hr>					
					<h4>판매자명</h4>
					<div class="input-group-icon mt-10">						
						<input type="text" name="address" placeholder=""	class="single-input">
					</div>
					<hr>
					<h4>연락처</h4>
					<div class="input-group-icon mt-10">						
						<input type="text" name="address" placeholder="ex)010-0000-0000"	class="single-input">
					</div>
					<hr>
					<h4>홈페이지 주소</h4>
					<div class="input-group-icon mt-10">						
						<input type="text" name="address" placeholder="ex)http://blog.naver.com/jejuFun"	class="single-input">
					</div>
					<hr>
					<div style="text-align : center;">
					<button class="genric-btn primary e-large" style="width:300px; font-size:x-large; font-weight:bold;">다음</button>
					<input type="submit" value="등 록"  class="genric-btn primary e-large" style="display:none; width:300px; font-size:x-large; font-weight:bold;" >
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--================ Blog Area end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>