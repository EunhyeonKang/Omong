<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
   <%@include file="/WEB-INF/views/common/header.jsp"%>
   <!-- breadcrumb start-->
   <section class="breadcrumb breadcrumb_bg"
      style="background-image: url(/resources/img/main2.jpg);">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="breadcrumb_iner">
                  <div class="breadcrumb_iner_item text-center">
                     <h2>회원가입</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- breadcrumb start-->
   <div class="section-top-border" style="margin-left: 30%">
      <div class="row">
         <div class="col-lg-8 col-md-8">
            <h3 class="mb-30">직원 회원가입</h3>
            <hr>
            <form action="/join_employee_info.do">
               <h4>아이디</h4>
               <div class="mt-10">
                  <input type="text" name="id" placeholder="아이디 입력"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '아이디 입력'" required
                     class="single-input">
                 <span id="idChk" style="color: orange;"></span>
               </div>
               <span class="idChk" style="color: green;"></span>
               <hr>
               <h4>비밀번호</h4>
               <div class="mt-10">
                  <input type="password" name="pw" placeholder="비밀번호 입력"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '비밀번호 입력'" required
                     class="single-input">
               </div>
               <hr>
               <h4>비밀번호 확인</h4>
               <div class="mt-10">
                  <input type="password" name="pwRe" placeholder="비밀번호 확인 입력"
                     onfocus="this.placeholder = ''"
                   	 onblur="this.placeholder = '비밀번호확인 입력'" required
                     class="single-input" >
               </div> 
               <span class="pwChk" style="color: green;"></span>
               <span class="pwChkRe" style="color: orange;"></span>
               <hr>
               <h4>직원이름</h4>
               <div class="mt-10">
                  <input type="text" name="name" placeholder="직원 이름 입력"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '직원 이름 입력'" required
                     class="single-input">
               </div>
               <hr>
               <h4>이메일</h4>
               <div class="mt-10">
                  <div class="icon">
                     <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                  </div>
                  <input type="email" name="email" placeholder="이메일 입력"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '이메일 입력'" required
                     class="single-input">
               </div>
               <hr>
               <h4>전화번호</h4>
               <div class="mt-10">
                  <div class="icon">
                     <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                  </div>
                  <input type="text" name="phone" placeholder="예) 010-0000-0000"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '전화번호 입력'" required
                     class="single-input">
               </div>
               <hr>
               <h4>주소</h4>
					<div class="input-group-icon mt-10">
						<input type="hidden" id="sample2_extraAddress">
						<input type="button" style="margin-left:88%; border:0;" onclick="findAddress()" value="주소 찾기">
						<br><br>
						<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
						<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
						</div>
						<input type="text" name="address" id="address" placeholder="주소를 입력해주세요"
							 required
							class="single-input" readonly>
						<br>	
						<input type="text" name="address_detail" id="address_detail"  placeholder="상세주소를 입력해주세요" 
						required class="single-input">
					</div>
               <hr>
               <h4>생년월일</h4>
               <div class="mt-10">
                  <div class="icon">
                     <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                  </div>
                  <input type="text" name="birth" placeholder="예) 2021-06-21"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '생년월일'" required
                     class="single-input">
               </div>
              
             <%--   <h4>생년월일</h4>
               <div class="mt-10">
                  <div class="icon">
                     <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                  </div>
                  <div class="form-select" id="default-select" style="font-size:15px;" onclick="func1()">
                     <select style="float:left;">
                        <c:forEach var="i" begin= "0" end= "61">
                        <option name="year" value=2021-${i}>${2021-i }</option>
                        </c:forEach>
                     </select>
                     <p style="float:left; margin-right:30px;">년</p>
                     <select style="float:left;">
                        <c:forEach var="i" begin= "0" end= "11">
                        <option name="month" value=1+${i}>${1+i }</option>
                        </c:forEach>
                     </select>
                     <p style="float:left; margin-right:30px;">월</p>
                     <select style="float:left;">
                        <c:forEach var="i" begin= "0" end= "30">
                        <option name="day" value=1+${i}>${1+i }</option>
                        </c:forEach>
                     </select>
                     <p style="float:left; margin-right:30px;">일</p>
                     
                  </div>
               </div> --%>
               <hr>
               <div class="single-element-widget mt-30">
                  <h4>성별</h4>
                     <label for="male">
                     <div style="width : 150px; height : 150px; background-image: url(/resources/img/male.png); background-size:cover; text-align:center;">
                        <input type="radio" name="gender" id="male" value="M">남자
                     </div>
                     </label>
                     <label for="female">
                     <div style="width : 150px; height : 150px; background-image: url(/resources/img/female.png); background-size:cover; text-align:center;">
                        <input type="radio" name="gender" id="female" value="F">여자
                     </div>
                     </label>
               </div>
               <hr>
               <div style="text-align : center;">
               <input type="submit" value="회 원 가 입" class="genric-btn success e-large" style="width:300px; font-size:x-large; font-weight:bold";>
               </div>
            </form>
         </div>
      </div>
   </div>
   <!--================ Blog Area end =================-->
   <%@include file="/WEB-INF/views/common/footer.jsp"%>
   	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    // 우편번호 찾기 화면을 넣을 element
	    var element_layer = document.getElementById('layer');
	
	    function closeDaumPostcode() {
	        // iframe을 넣은 element를 안보이게 한다.
	        element_layer.style.display = 'none';
	    }
	
	    function findAddress() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample2_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample2_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById("address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("address_detail").focus();
	
	                // iframe을 넣은 element를 안보이게 한다.
	                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
	                element_layer.style.display = 'none';
	            },
	            width : '100%',
	            height : '100%',
	            maxSuggestItems : 5
	        }).embed(element_layer);
	
	        // iframe을 넣은 element를 보이게 한다.
	        element_layer.style.display = 'block';
	
	        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
	        initLayerPosition();
	    }
	
	    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
	    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
	    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
	    function initLayerPosition(){
	        var width = 300; //우편번호서비스가 들어갈 element의 width
	        var height = 400; //우편번호서비스가 들어갈 element의 height
	        var borderWidth = 5; //샘플에서 사용하는 border의 두께
	
	        // 위에서 선언한 값들을 실제 element에 넣는다.
	        element_layer.style.width = width + 'px';
	        element_layer.style.height = height + 'px';
	        element_layer.style.border = borderWidth + 'px solid';
	        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
	        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
	        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
	    }
	</script>
   <script>
		$('[name=id]').keyup(function(){
			var id = $(this).val();
			$.ajax({
				url:"/idCheck.do",
				data : {id:id},
				type : "get",
				success: function(data){
					if(data==1){
						$("#idChk").html("이미 사용중인 아이디 입니다.");
					}else{
						$("#idChk").html("사용가능한 아이디 입니다.");
					}
				}
			})
		});
		$('[name=id]').on('keyup' ,function(event) {
		    if (/^[0-9a-z]+$/g.test($('[name=id]').val())) {
		         $('.idChk').html("<i class='bi bi-exclamation-circle'></i>"); 
		    } else {
		    	 $('.idChk').html("<i class='bi bi-exclamation-circle'></i> 숫자, 영문만 입력 가능");
		     
		    }
		});
		$('[name=pw]').on('keyup' ,function(event) {
		    if (/(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/g.test($('[name=pw]').val())) {
 		        $('.pwChk').html("<i class='bi bi-exclamation-circle'></i>"); 
		    } else {
		    	 $('.pwChk').html("<i class='bi bi-exclamation-circle'></i> 숫자, 특문 각 1회 이상, 영문은 2개 이상 사용하여 8자리 이상 입력");
		     
		    }
		});
		
		 $('[name=pwRe]').focusout(function () {
		        var pwd1 = $("[name=pw]").val();
		        var pwd2 = $("[name=pwRe]").val();
		  
		        if ( pwd1 != '' && pwd2 == '' ) {
		            null;
		        } else if (pwd1 != "" || pwd2 != "") {
		            if (pwd1 == pwd2) {
		            	$('.pwChkRe').html("비밀번호가 일치합니다.");
		            } else {
		            	$('.pwChkRe').html("비밀번호를 다시 입력해주세요.");
		            }
		        }
		    });
	</script>
</body>
</html>