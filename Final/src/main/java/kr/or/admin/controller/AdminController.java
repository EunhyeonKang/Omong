package kr.or.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.admin.model.service.AdminService;

import kr.or.admin.model.vo.Admin;



@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	
	@RequestMapping(value = "/adminLogin1.do")
	public String adminLogin1() {
		return "admin/adminLogin";
		
	}
	@RequestMapping(value = "/adminLogin.do")
	public String adminLogin(Admin a,HttpSession session,Model model) {
		Admin admin = service.selectOneAdmin(a);
		if(admin!=null) {
			session.setAttribute("m", admin);
			model.addAttribute("msg","로그인 성공");
			return "/";	//성공시 메인홈피로 이동
		}else{
			model.addAttribute("msg","아이디 또는 비밀번호를 확인해주세요");
			return "redirect:/";	//실패시 파업창 메세지로 없다고 알리면서 관리자 로그인페이지로 다시 이동
		}
		
	}

}
