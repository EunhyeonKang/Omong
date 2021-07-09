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
	<section class="breadcrumb breadcrumb_bg" style="background-image: url(/resources/img/main2.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2>게시판</h2>
							<p>게시판 . 공지사항</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!--================Blog Area =================-->
	<section class="blog_area single-post-area section_padding">
		<div class="container">
			<h3>자유게시판</h3>
			<hr style="border: 1px solid black;">
			<form action="insertNoticeEmployee.do" method="post">
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head">
							<div class="serial">제목</div>
							<div class="percentage"><input class="form-control" name="title" id="title" type="text" placeholder='제목을 입력하세요'></div>
							<div class="serial">작성자</div>
							<div class="percentage"><input class="form-control" name="writer" id="writer" type="writer" value="${sessionScope.u.id }" readonly></div>
							<div class="serial">작성일</div>
							<c:set var="now" value="<%=new java.util.Date()%>" />
							<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
							<div class="percentage"><input class="form-control" name="date" id="date" type="text" value="${sysDate }" readonly></div>
						</div>
						<div class="table-row">
						<input type="hidden" name="filename">
					
						<div class="table-row">
							<div class="serial">내용</div>
							<div>
								 <textarea id="summernote" name="content"></textarea>
							</div>
						</div>	
						
					</div>
				</div>
				</div>
				<br><br><br>
				<div style="text-align : center;">
					<input type="submit" value="작 성 완 료" class="genric-btn primary e-large" style="width:300px; font-size:x-large; font-weight:bold;">
				</div>
			</form>
			
		</div>
	</section>
	<!--================ Blog Area end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
	$(function(){
	$("#summernote").summernote({
		 height: 500, // editor height
         focus: true, // set focus editable area
         lang: "ko-KR", // 한글설정
         placeholder: "내용을 입력하세요.",
         callbacks: {
           // 이미지 첨부 시
           onImageUpload: function (files) {
             // 다중 업로드 처리
             for (var i = 0; i < files.length; i++) {
               uploadImage(files[i], this);
             }
           }
         }
       });
	});
       // 이미지 업로드
       function uploadImage(file, editor) {
    	 console.log(file);
         var formData = new FormData();
         formData.append("file", file);
         $.ajax({
           data: formData,
           type: "POST",
           url: "/uploadImage.do",
           enctype: 'multipart/form-data',
           cache: false,
           contentType: false,
           processData: false,
           success: function (data) {
        	  console.log(data);
             // 파일 네임 전송용
             $("[name=filename]").val(data);
             // 이미지 경로 설정
             data = "/resources/upload/notice/" + data;
             // 이미지 미리보기
             $(editor).summernote('insertImage', data);
           }
         });
       }
	</script>
</body>
</html>