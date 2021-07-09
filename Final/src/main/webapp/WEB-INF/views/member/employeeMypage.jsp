<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#btn{
		background-color: tomato;
	    border: 0;
	    outline: 0;
	    padding: 13px;
	    color: white;
	}
	#partner{
		background-color: green;
	    border: 0;
	    outline: 0;
	    padding: 13px;
	    color: white;
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
							<h2>마이페이지</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--마이페이지 첫 화면-->
	<div style="margin-left: 30%; margin-top: 1%">
		<button class="genric-btn primary-border e-large" id="change">직원탈퇴</button>
		<button class="genric-btn primary-border e-large" id="userList">회원/파트너 리스트</button>
	</div>
	<div class="section-top-border" style="margin-left: 30%;" id="mypage">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<hr>
				<form action="/employeeDelete.do?noticeEmployeeId=${u.id }">
	               <div style="text-align : center;">
	               <input type="submit" value="직 원 탈 퇴" class="genric-btn primary e-large" style="background:#dc3545; color: white; width:300px; font-size:x-large; font-weight:bold";>
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
				<button id="btn">전체회원정보 불러오기</button>
				<button id="partner">전체파트너정보 불러오기</button>			
				<div id="result">
				</div>
				
			</div>
		</div>
	</div>
	
	
	<!--================ 마이페이지_내일정 end =================-->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		
		$("#change").click(function(){
			if($("#mypage").css("display") == "none") {
				$("#mypage").show();
				$("#userListpage").hide();
				$("#change").attr('class','genric-btn primary e-large');
				$("#userList").attr('class','genric-btn primary-border e-large');
				
				
			}
		});
	
		$("#userList").click(function(){
			if($("#userListpage").css("display") == "none") {
				$("#userListpage").show();
				$("#mypage").hide();
				$("#change").attr('class','genric-btn primary-border e-large');
				$("#userList").attr('class','genric-btn primary-border e-large');
			}
		});
		
	</script>
	<script>
		$("#btn").click(function(){
			$.ajax({
				url:"/totalUserList.do",
				success : function(data){
					
					$("#result").empty();
					var table = $("<div class='progress-table'>");
					var titleTr = $("<div class='table-head'>");
					titleTr.append("<div class='serial'>번호</div><div class='percentage'>아이디</div><div class='country'>이름</div><div class='visit'>전화번호</div>");
					table.append(titleTr);
					for(var i=0;i<data.length;i++){
						var tr = $("<div class='table-head'>");
						tr.append("<div class='serial'>"+data[i].no+"</div>");
						tr.append("<div class='percentage'>"+data[i].id+"</div>");
						tr.append("<div class='country'>"+data[i].name+"</div>");
						tr.append("<div class='country'>"+data[i].phone+"</div>");
						table.append(tr);						
					};
					$("#result").append(table);
				}
			});
		});
		$("#partner").click(function(){
			$.ajax({
				url:"/totalPartnerList.do",
				success : function(data){
					
					$("#result").empty();
					var table = $("<div class='progress-table'>");
					var titleTr = $("<div class='table-head'>");
					titleTr.append("<div class='serial'>번호</div><div class='percentage'>아이디</div><div class='country'>이름</div><div class='visit'>전화번호</div><div class='visit'>yn</div>");
					table.append(titleTr);
					for(var i=0;i<data.length;i++){
						var tr = $("<div class='table-head'>");
						tr.append("<div class='serial'>"+data[i].no+"</div>");
						tr.append("<div class='percentage'>"+data[i].id+"</div>");
						tr.append("<div class='country'>"+data[i].name+"</div>");
						tr.append("<div class='country'>"+data[i].phone+"</div>");
						if(data[i].yn==0){
							tr.append("<div class='country'><select name='yn'><option value='"+data[i].yn+"' selected>"+data[i].yn+"</option><option value='1'>1</option></select></div>");
						}else{
							tr.append("<div class='country'><select name='yn'><option value='"+data[i].yn+"' selected>"+data[i].yn+"</option><option value='0'>0</option></select></div>");
						}
						tr.append("<input type='button' onclick='updateYn(this);' value='수정' class='genric-btn primary e-large' style='margin: 2px;'/>");
						table.append(tr);						
					};
					$("#result").append(table);
				}
			});
		});
		function updateYn(data){
			var no = $(data).parent().children().first().html();
			console.log(no);
			var yn = $(data).parent().children().eq(4).children().val();
			console.log(yn);
			location.href="/updateYn.do?no="+no+"&yn="+yn;
		}
	</script>
</body>
</html>