package kr.or.omong.controller;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.member.model.service.EmployeeService;
import kr.or.member.model.vo.User;

@RestController
@Controller
public class KakaoController {
	@Autowired
	private EmployeeService service;
	public KakaoController() {
		super();
		System.out.println("controller시작");
	}
	KakaoAPI kakaoApi = new KakaoAPI();
	@RequestMapping(value="/kakaologin.do")
	public ModelAndView login(User u,@RequestParam("code") String code,HttpSession session,Model model) {
		ModelAndView mav= new ModelAndView();
		//1번인증코드 요청 전달
		String accessToken = kakaoApi.getAccessToken(code);
		//2번인증코드로 토큰 전달
		HashMap<String, Object> userInfo = kakaoApi.getUserInfo(accessToken);
		//로그인정보
		System.out.println("login info : " + userInfo.toString());
		
		
		String birthday= (String) userInfo.get("birthday");
		u.setBirth(birthday);
		String gender= (String) userInfo.get("gender");
		if(gender.equals("female")) {
			u.setGender("여");
		}else {
			u.setGender("남");
		}
		String nickname= (String) userInfo.get("nickname");
		u.setName(nickname);
		String email= (String) userInfo.get("email");
		u.setEmail(email);
		String profile= (String) userInfo.get("profile");
		u.setProfileImage(profile);
		u.setType("m");
		u.setChangePw("K");
		
		//userinfo 출력하기
		//주소,프로필,핸드폰,비밀번호

		if(userInfo.get("email")!=null) {
			session.setAttribute("userId", userInfo.get("email"));
			session.setAttribute("kakao", u);
			session.setAttribute("access_token", accessToken);
		}
		model.addAttribute("u",u);
		mav.addObject("userId",userInfo.get("email"));
		mav.addObject("u",u);
		mav.setViewName("member/kakaoUpdate");
		return mav;
	}
	@RequestMapping(value="/logout.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		kakaoApi.kakaologout((String)session.getAttribute("access_token"));
		session.removeAttribute("accessToken");
		session.removeAttribute("userId");
		session.invalidate();
		mav.setViewName("redirect:index.jsp");
		return mav;
	}
}
