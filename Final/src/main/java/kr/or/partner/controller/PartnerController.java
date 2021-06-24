package kr.or.partner.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.member.model.vo.User;
import kr.or.partner.model.service.PartnerService;
import sun.print.resources.serviceui;

@Controller
public class PartnerController {
	
@Autowired
private PartnerService service;

@RequestMapping(value="/insertPackage.do")
public String insertPackage() {
	return "partner/insertPackage";
}
@RequestMapping(value="/packageView.do")
public String packageView() {
	return "partner/packageView";
}

@RequestMapping(value="/partnerLogin.do")
public String login(User u ,HttpServletRequest request, Model model) {
	User partner = service.selectOnePatner(u);
	if(partner != null) {
		HttpSession session = request.getSession();
		session.setAttribute("u", partner);
		model.addAttribute("msg", "로그인 성공");		
	}else {
		model.addAttribute("msg", "아이디 또는 비밀번호를 확인해주세요");	
	}	
	model.addAttribute("loc", "/");	
	return "common/msg";
}

}
