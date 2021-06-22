<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("_H2__p5_op3sciR2ACV2", "http://localhost/naver/naverCallback.jsp");
  // 접근 토큰 값 출력
  alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
	//값 잘들어옴
    alert(naver_id_login.getProfileData('email')); //이메일 주소 
    alert(naver_id_login.getProfileData('nickname')); //닉네임 
    alert(naver_id_login.getProfileData('name')); // 이름
    alert(naver_id_login.getProfileData('id')); // 고유값 id
    alert(naver_id_login.getProfileData('gender')); //성별  M , F 
    alert(naver_id_login.getProfileData('profile_image')); // 프로필사진 주소 (Stirng)값
    alert(naver_id_login.getProfileData('age')); // 나이대 값
    
    //언디파인으로 불러옴..
    alert(naver_id_login.getProfileData('birthday')); //생일 월/일 
    alert(naver_id_login.getProfileData('birthyear')); //생년
    alert(naver_id_login.getProfileData('mobile')); //전화번호
  }
</script>
</body>
</html>