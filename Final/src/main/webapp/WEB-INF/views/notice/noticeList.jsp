<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		
			<div class="container">
			
			<c:choose>
				<c:when test="${sessionScope.u.type eq 'e'}">
					<button
					style="margin-left: 80%; background-color: orangered; width: 50x; padding:10px; color: white; text-decoration: bold; border: none;"><a href="/noticeWriteFrm.do">글쓰기</a></button>
				</c:when>
			</c:choose>
			<h3>공지사항</h3>
			<hr style="border: 1px solid black;">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head">
						<div class="serial">번호</div>
						<div class="percentage">제목</div>
						<div class="country">작성자</div>
						<div class="visit">조회수</div>
					</div>
					<c:forEach items="${list }" var="noticeEmployee" varStatus="i">
						<div class="table-row">
							<div class="serial">${noticeEmployee.noticeEmployeeNo }</div>
							<input type="hidden" value="${sessionScope.u.type }" id="type">
							<div class="percentage"><a href="/detailNoticeEmployee.do?noticeEmployeeNo=${noticeEmployee.noticeEmployeeNo}" onclick="readCount(this);">${noticeEmployee.title }</a></div>
							<%-- <div class="country">
								<img src="/resources/upload/notice/${noticeEmployee.filename }">
							</div> --%>
							<div class="country">${noticeEmployee.writer }</div>
							<div class="visit">${noticeEmployee.noticeEmployeeViews }</div>
						</div>	
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!--================ Blog Area end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
	function readCount(data){
		var noticeNo = $(data).parent().parent().children().eq(0).html();
		var noticeView = $(data).parent().parent().children().eq(4).html();
		$.ajax({
			data : noticeView,
			type : "GET",
			url : "/readCount.do?noticeEmployeeNo="+noticeNo+"&noticeEmployeeViews="+noticeView,
			success : function(data){
				if(data!=-1){
					console.log("성공");
				}else{
					console.log("실패");
				}
			}
		})
	}
	</script>
</body>
</html>