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
                  <input type="text" name="employeeId" placeholder="아이디 입력"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '아이디 입력'" required
                     class="single-input">
                 <span id="idChk" style="color: orange;"></span>
               </div>
               <span class="idChk" style="color: green;"></span>
               <hr>
               <h4>비밀번호</h4>
               <div class="mt-10">
                  <input type="password" name="employeePw" placeholder="비밀번호 입력"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '비밀번호 입력'" required
                     class="single-input">
               </div>
               <hr>
               <h4>비밀번호 확인</h4>
               <div class="mt-10">
                  <input type="password" name="employeePwRe" placeholder="비밀번호 확인 입력"
                     onfocus="this.placeholder = ''"
                   	 onblur="this.placeholder = '비밀번호확인 입력'" required
                     class="single-input" >
               </div> 
               <span class="pwChk" style="color: green;"></span>
               <span class="pwChkRe" style="color: orange;"></span>
               <hr>
               <h4>직원이름</h4>
               <div class="mt-10">
                  <input type="text" name="employeeName" placeholder="직원 이름 입력"
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
                  <input type="email" name="employeeEmail" placeholder="이메일 입력"
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
                  <input type="text" name="employeePhone" placeholder="예) 010-0000-0000"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '전화번호 입력'" required
                     class="single-input">
               </div>
               <hr>
               <h4>주소</h4>
               <div class="mt-10">
                  <div class="icon">
                     <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                  </div>
                  <input type="text" name="employeeAddress" placeholder="예) 서울 영등포구"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '주소입력'" required
                     class="single-input">
               </div>
               <hr>
               <h4>생년월일</h4>
               <div class="mt-10">
                  <div class="icon">
                     <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                  </div>
                  <input type="text" name="employeeBirth" placeholder="예) 2021-06-21"
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
                        <input type="radio" name="employeeGender" id="male" value="M">남자
                     </div>
                     </label>
                     <label for="female">
                     <div style="width : 150px; height : 150px; background-image: url(/resources/img/female.png); background-size:cover; text-align:center;">
                        <input type="radio" name="employeeGender" id="female" value="F">여자
                     </div>
                     </label>
               </div>
               <hr>
               <div style="text-align : center;">
               <input type="submit" value="회 원 가 입" class="genric-btn primary e-large" style="width:300px; font-size:x-large; font-weight:bold";>
               </div>
            </form>
         </div>
      </div>
   </div>
   <!--================ Blog Area end =================-->
   <%@include file="/WEB-INF/views/common/footer.jsp"%>
   <script>
		$("[name=employeeId]").keyup(function(){
			var employeeId = $(this).val();
			$.ajax({
				url:"/idCheck.do",
				data : {employeeId:employeeId},
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
		$('[name=employeeId]').on('keyup' ,function(event) {
		    if (/^[0-9a-z]+$/g.test($('[name=employeeId]').val())) {
		         $('.idChk').html("<i class='bi bi-exclamation-circle'></i>"); 
		    } else {
		    	 $('.idChk').html("<i class='bi bi-exclamation-circle'></i> 숫자, 영문만 입력 가능");
		     
		    }
		});
		$('[name=employeePw]').on('keyup' ,function(event) {
		    if (/(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/g.test($('[name=employeePw]').val())) {
 		        $('.pwChk').html("<i class='bi bi-exclamation-circle'></i>"); 
		    } else {
		    	 $('.pwChk').html("<i class='bi bi-exclamation-circle'></i> 숫자, 특문 각 1회 이상, 영문은 2개 이상 사용하여 8자리 이상 입력");
		     
		    }
		});
		
		 $('[name=employeePwRe]').focusout(function () {
		        var pwd1 = $("[name=employeePw]").val();
		        var pwd2 = $("[name=employeePwRe]").val();
		  
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