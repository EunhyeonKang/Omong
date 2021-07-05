<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.schedule{
		justify-self: center;
	 	margin:10px;
	 	
	}
	.row{
		justify-content: center;
	}
	.top_place{
		width: 100%;
	}
	.groupListWrap{
		width : 1200px;
			margin: 0 auto;
			padding:0;			
			overflow :hidden;
	}
	
</style>
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
							<h2>상품 예약</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!-- hotel list css start-->
	<br>
	<h3 style="float: left; margin-left: 40px;">상품 리스트</h3>
	<a href="/topScheduleList.do"><button style="float:right; margin-right: 40px; background-color: orangered; width: 50x; height: 30px; color: white; text-decoration: bold; border: none;">더보기</button></a>
	<section class="top_place" style="margin-top: 50px; margin-bottom: 50px;">
		
		<hr style="border: solid 1px black;">
		<div class="container_reservation" style="width: 100%;">
			<div class = "groupListWrap">
				<c:forEach items="${list}" var="p">
						<div class="single_place" style="width :28%; margin:30px; display:inline-block;"  >
							<img src="/resources/upload/package/${p.packageProductMainPicture}" alt="" style="width:100%;">
							<div class="hover_Text d-flex align-items-end justify-content-between">
								<div class="hover_text_iner">
									<a href="packageView.do?partnerNo=${p.partnerNo}" class="place_btn">상세보기</a>
									<h3 style="color:black;">${p.packageProductName}</h3>
									<p style="color:black;">${p.packageProductInfo}</p>
								</div>
								<div class="details_icon text-right">
									
								</div>
							</div>
						</div>
							
				</c:forEach>						
			</div>
		</div>
	</section>
	<!-- hotel list css end -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
<script>
		$(function(){
			more(1);
			$("#more-btn").click(function(){
				more($(this).val());
			});
		});
		function more(start){
			$.ajax({
				url : "/photoMore",
				data : {start:start},
				type : "post",
				success : function(data){
					for(var i=0;i<data.length;i++){
						var p = data[i];
						var html = "";
						console.log(p.filepath);
						html += "<div class='photo'>";
						html += "<img src='/upload/photo/"+p.filepath+"'>";
						html += "<p class='caption'>"+p.photoContent+"</p></div>";
						$(".photoWrapper").append(html);
					}
					//이미지 추가가 끝나고나면 더보기 버튼의 value 값 조정
					$("#more-btn").val(Number(start)+5);
					var curr = Number($("#more-btn").attr("currentCount"));
					$("#more-btn").attr("currentCount",curr+data.length); //수가5단위로 맞지않을때 길이를 더해주기위해 작성한 코드
					var totalCount = $("#more-btn").attr(totalCount);
					var currCount = $("#more-btn").attr("currentCount");
					if(currCount == totalCount){
						$("#more-btn").attr("disabled",true);
					}
				}
				
			})
		}
	</script>
</html>