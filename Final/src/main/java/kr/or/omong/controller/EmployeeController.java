package kr.or.omong.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.or.member.model.service.EmployeeService;
import kr.or.member.model.vo.Member;
import kr.or.member.model.vo.User;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService service;
	
	@RequestMapping(value="/join_employee.do")
	public String join_employee() {
		return "member/join_employee";
	}
	
	@RequestMapping(value="/join_employee_info.do")
	public String join_employee_info(User u, Model model) {
		int result = service.insertEmployee(u);
		if (result > 0) {
			model.addAttribute("msg", "회원가입 성공");
		} else {
			model.addAttribute("msg", "회원가입 실패");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	@ResponseBody
	@RequestMapping(value = "/totalUserList.do", produces = "application/json; charset=utf-8")
	public String totalUserList() {
		ArrayList<User> list = service.totalUserList();
		return new Gson().toJson(list);
	}

	
	@ResponseBody
	@RequestMapping(value="/idCheck")
	public String idCheck(User u) {
		User employee = service.selectOneEmployee(u);
		if(employee!=null) {
			return "1";
		}else {
			return "0";
		}
	}
	
	@RequestMapping(value="/employeeLogin.do")
	public String employeeLogin(User u,HttpServletRequest request,Model model) {
		User employee = service.selectOneEmployee(u);
		if (employee != null) {
			HttpSession session = request.getSession();
			session.setAttribute("u", employee);
			model.addAttribute("msg", "로그인 성공");
		} else {
			model.addAttribute("msg", "아이디 또는 비밀번호를 확인해주세요.");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	
	@RequestMapping(value="/employeeMypage.do")
	public String employeeMypage() {
		return "member/employeeMypage";
	}
	
	@RequestMapping(value="/employeeUpdate.do")
	public String employeeUpdate(User u,Model model) {
		int result = service.employeeUpdate(u);
		return "redirect:/employeeMypage.do?employeeId=" + u.getId();
	}
}
