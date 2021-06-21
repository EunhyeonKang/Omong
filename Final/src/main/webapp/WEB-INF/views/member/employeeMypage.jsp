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
	<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg"
		style="background-image: url(/resources/img/main2.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2>마이페이지</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--마이페이지 첫 화면-->
	<div style="margin-left: 30%; margin-top: 1%">
		<button class="genric-btn primary-border e-large" id="change">정보변경</button>
		<button class="genric-btn primary-border e-large" id="notice">문의사항</button>
		<button class="genric-btn primary-border e-large" id="userList">회원리스트</button>
	</div>
	<div class="section-top-border" style="margin-left: 30%;" id="mypage">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<hr>
				<form action="/employeeUpdate.do">
               <h4>아이디</h4>
               <div class="mt-10">
                  <input type="text" name="employeeId" value="${sessionScope.e.employeeId }"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '아이디 입력'" required
                     class="single-input" style="background: #E2E2E2" readonly="readonly">
                 <span id="idChk" style="color: orange;"></span>
               </div>
               <span class="idChk" style="color: green;"></span>
               <hr>
               <h4>비밀번호</h4>
               <div class="mt-10">
                  <input type="password" name="employeePw" value="${sessionScope.e.employeePw }"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '비밀번호 입력'" required
                     class="single-input">
               </div>
               <hr>
               <h4>직원이름</h4>
               <div class="mt-10">
                  <input type="text" name="employeeName" value="${sessionScope.e.employeeName }"
                     onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '직원 이름 입력'" required
                     class="single-input" style="background: #E2E2E2" readonly="readonly">
               </div>
               <hr>
               <h4>이메일</h4>
               <div class="mt-10">
                  <div class="icon">
                     <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                  </div>
                  <input type="email" name="employeeEmail" value="${sessionScope.e.employeeEmail }"
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
                  <input type="text" name="employeePhone" value="${sessionScope.e.employeePhone }"
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
                  <input type="text" name="employeeAddress" value="${sessionScope.e.employeeAddress }"
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
                  <input type="text" name="employeeBirth" value="${sessionScope.e.employeeBirth }"
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
                        <input type="radio" name="employeeGender" id="male" value="${sessionScope.e.employeeGender }">남자
                     </div>
                     </label>
                     <label for="female">
                     <div style="width : 150px; height : 150px; background-image: url(/resources/img/female.png); background-size:cover; text-align:center;">
                        <input type="radio" name="employeeGender" id="female"value="${sessionScope.e.employeeGender }">여자
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
	<!--================ 마이페이지 문의사항 =================-->
	<!--문의사항-->
	<div class="section-top-border"
		style="margin-left: 30%; display:none;" id="noticepage">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<hr>
				<form action="#">
						<div class="progress-table-wrap">
						<div class="progress-table">
							<div class="table-head">
								
								<div class="serial">번호</div>
								<div class="percentage">제목</div>
								<div class="country">작성자</div>
								<div class="visit">조회수</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage"><a href="/noticeView.do">제목입니다</a></div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--================ 마이페이지 회원리스트 =================-->
	<!--회원리스트-->
	<div class="section-top-border"
		style="margin-left: 30%; display:none;" id="userListpage">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<hr>
				<form action="#">
						<div class="progress-table-wrap">
						<div class="progress-table">
							<div class="table-head">
								<div class="serial">번호</div>
								<div class="percentage">제목</div>
								<div class="country">작성자</div>
								<div class="visit">조회수</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage"><a href="/noticeView.do">제목입니다</a></div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="percentage">제목입니다</div>
								<div class="country">
									<img src="img/elements/f1.jpg" alt="flag">Canada
								</div>
								<div class="visit">645032</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	
	<!--================ 마이페이지_내일정 end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		
		$("#change").click(function(){
			if($("#mypage").css("display") == "none") {
				$("#mypage").show();
				$("#noticepage").hide();
				$("#userListpage").hide();
				$("#change").attr('class','genric-btn primary e-large');
				$("#notice").attr('class','genric-btn primary-border e-large');
				$("#userList").attr('class','genric-btn primary-border e-large');
				
				
			}
		});
		$("#notice").click(function(){
			if($("#noticepage").css("display") == "none") {
				$("#noticepage").show();
				$("#mypage").hide();
				$("#userListpage").hide();
				$("#change").attr('class','genric-btn primary-border e-large');
				$("#notice").attr('class','genric-btn primary-border e-large');
				$("#userList").attr('class','genric-btn primary-border e-large');
			}
		});
		$("#userList").click(function(){
			if($("#userListpage").css("display") == "none") {
				$("#userListpage").show();
				$("#mypage").hide();
				$("#noticepage").hide();
				$("#change").attr('class','genric-btn primary-border e-large');
				$("#notice").attr('class','genric-btn primary-border e-large');
				$("#userList").attr('class','genric-btn primary-border e-large');
			}
		});
		
	</script>
</body>
</html>