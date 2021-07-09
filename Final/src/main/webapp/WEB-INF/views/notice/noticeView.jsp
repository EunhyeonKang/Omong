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
			<h3 style="margin-left: 40px;">상세보기</h3>
				<c:choose>
					<c:when test="${sessionScope.u.type eq 'e'}">
						<button
							style="margin-left: 80%; background-color: green; padding: 20px; text-decoration: bold; border: none;"
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
							<div class="serial">
								${u.title }
							</div>
							<div class="serial">작성자</div>
							<div class="serial">${u.writer }</div>
						</div>
						<div class="table-row">
							<div class="serial">내용</div>
							<div style="width: 80%">
								${u.content }
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		function updateNotice(data) {
			var noticeEmployeeNo = $(data).parent().children().eq(4).children().children().children().eq(1).html();
			location.href = "/updateNoticeFrm.do?noticeEmployeeNo="+noticeEmployeeNo;
		}
		function deleteNotice(data){
			var noticeEmployeeNo = $(data).parent().children().eq(4).children().children().children().eq(1).html();
			location.href = "/deleteNoticeEmployee.do?noticeEmployeeNo="+noticeEmployeeNo;
		}
	</script>
</body>
</html>