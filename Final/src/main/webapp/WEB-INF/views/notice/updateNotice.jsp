<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
							<h2>게시판</h2>
							<p>게시판 . 공지사항</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="blog_area single-post-area section_padding">
		<div class="container">
			<div class="container">
			<h3 style="margin-left: 40px;">수정하기</h3>
				<c:choose>
					<c:when test="${sessionScope.u.type eq 'e'}">
						<button
							style="margin-left: 80%; background-color: #ffc107; padding: 20px; text-decoration: bold; border: none;"
							onclick="updateNotice(this);">
							<span style="color: white">수정하기</span>
						</button>
						<button
							style="background-color: orangered; padding: 20px; text-decoration: bold; border: none;"
							onclick="deleteNotice(this);">
							<span style="color: white">삭제하기</span>
						</button>
					</c:when>
				</c:choose>
				<hr style="border: 1px solid black;">
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head">
							<div class="serial">번호</div>
							<div class="serial">${u.noticeEmployeeNo }</div>

							<div class="serial">제목</div>
							<input type="text" value="${u.title }"/>		
							<div class="serial">작성자</div>
							<div class="serial">${u.writer }</div>
						</div>
						<input type="hidden" name="filename">
						<input type="hidden" value='${u.noticeEmployeeNo }' name="no">
						<%-- <div class="table-row">
							<div class="serial">사진</div>
							<div class="country" style="width:150px; height:150px;">
								<img src="/resources/upload/notice/${u.filename }" style="width:150px; height:150px;object-fit:cover;">
							</div>
						</div> --%>

						<div class="table-row">
							<div class="serial">내용</div>
							<div style="width: 80%">
								 <textarea id="summernote" name="message" id="message">${u.content }</textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<%@include file="/WEB-INF/views/common/footer.jsp"%> 
	<script>
		function updateNotice(data) {
			var noticeEmployeeNo = $(data).parent().children().eq(4).children()
					.children().children().eq(1).html();
			var title = $(data).parent().children().eq(4).children().children()
					.children().eq(3).val();
			var content = document.getElementById("summernote").value;
			console.log(content);
			 location.href = "/updateNoticeEmployee.do?noticeEmployeeNo="
					+ noticeEmployeeNo + "&title=" + title +"&content="+content; 

		}
		function deleteNotice(data){
			var noticeEmployeeNo = $(data).parent().children().eq(4).children()
			.children().children().eq(1).html();
			location.href = "/deleteNoticeEmployee.do?noticeEmployeeNo="+noticeEmployeeNo;
		}
        
	</script>
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
    	 console.log(file)
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