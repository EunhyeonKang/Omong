package kr.or.omong.controller;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@Controller
public class KakaoController {
	
	public KakaoController() {
		super();
		System.out.println("controller시작");
	}
	KakaoAPI kakaoApi = new KakaoAPI();
	@RequestMapping(value="/kakaologin.do")
	public ModelAndView login(@RequestParam("code") String code,HttpSession session) {
		System.out.println("들어옴?");
		ModelAndView mav= new ModelAndView();
		//1번인증코드 요청 전달
		String accessToken = kakaoApi.getAccessToken(code);
		//2번인증코드로 토큰 전달
		HashMap<String, Object> userInfo = kakaoApi.getUserInfo(accessToken);
		//로그인정보
		System.out.println("login info : " + userInfo.toString());
		
		if(userInfo.get("email")!=null) {
			session.setAttribute("userId", userInfo.get("email"));
			session.setAttribute("access_token", accessToken);
		}
		mav.addObject("userId",userInfo.get("email"));
		mav.setViewName("redirect:index.jsp");
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
