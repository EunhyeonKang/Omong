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
                     <h2>회원가입</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- breadcrumb start-->
   <div class="section-top-border" style="text-align:center">
         <a href="/join_user.do"><button class="genric-btn primary e-large" style="width:250px; height:200px; font-size : 30px">일반회원</button></a>
         <a href="/join_partner.do"><button class="genric-btn success e-large" style="width:250px; height:200px; font-size : 30px"">파트너</button></a>
         <a href="/join_employee.do"><button class="genric-btn success e-large" style="width:250px; height:200px; font-size : 30px"">직원</button></a>
   </div>
   <!--================ Blog Area end =================-->
   <%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>