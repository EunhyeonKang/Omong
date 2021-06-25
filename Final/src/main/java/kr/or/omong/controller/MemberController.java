package kr.or.omong.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.member.model.vo.User;
import kr.or.member.model.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	public MemberController() {
		super();
		System.out.println("Controller 생성완료");
	}
	
	
	@RequestMapping(value="/map.do")
	public String map() {
		return "map/map";
	}
	@RequestMapping(value="/schedule.do")
	public String schedule() {
		return "schedule/scheduleList";
	}
	@RequestMapping(value="/noticeList.do")
	public String noticeList() {
		return "notice/noticeList";
	}
	@RequestMapping(value="/boardList.do")
	public String boardList() {
		return "board/boardList";
	}
	@RequestMapping(value="/boardWriteFrm.do")
	public String boardWriteFrm() {
		return "board/boardWriteFrm";
	}
	@RequestMapping(value="/noticeWriteFrm.do")
	public String noticeWriteFrm() {
		return "notice/noticeWriteFrm";
	}
	@RequestMapping(value="/noticeView.do")
	public String noticeView() {
		return "notice/noticeView";
	}
	@RequestMapping(value="/boardView.do")
	public String boardView() {
		return "board/boardView";
	}
	@RequestMapping(value="/join.do")
	public String join() {
		return "member/join";
	}
	@RequestMapping(value="/join_user.do")
	public String join_user() {
		return "member/join_user";
	}

	
	/*
	@RequestMapping(value="/join_employee_info.do")
	public String join_employee_info(Employee e, Model model) {
		int result = service.insertEmployee(e);
		if (result > 0) {
			model.addAttribute("msg", "회원가입 성공");
		} else {
			model.addAttribute("msg", "회원가입 실패");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	 */
	@RequestMapping(value="/login.do")
	public String login() {
		return "member/login";
	}
	@RequestMapping(value="/mypage.do")
	public String mypage() {
		return "member/mypage";
	}
	@RequestMapping(value="/topScheduleList.do")
	public String topScheduleList() {
		return "schedule/topScheduleList";
	}
	@RequestMapping(value="/scheduleInsert.do")
	public String scheduleInsert() {
		return "schedule/scheduleInsert";
	}
	@RequestMapping(value="/scheduleDetail.do")
	public String scheduleDetail(HttpServletRequest request, Model model) {
		String diff = request.getParameter("diff");
		model.addAttribute("diff", diff);
		return "schedule/scheduleDetail";
	}
	@RequestMapping(value="/packageList.do")
	public String packageList() {
		return "partner/packageList";
	}
	@RequestMapping(value="/memberLogin.do")
	public String login(User u, HttpServletRequest request, Model model) {
		User member = service.selectOneMember(u);
		if(member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("u", member);
			model.addAttribute("msg","로그인 성공");
		}else {
			model.addAttribute("msg","아이디 또는 비밀번호를 확인해주세요");
		}
		model.addAttribute("loc","/");
		return "common/msg";
	}
	@RequestMapping(value ="/memberLogout.do")
	public String logout(User u, Model model, HttpSession session) {
		if(session != null) {
			session.invalidate();
			model.addAttribute("msg","로그아웃 되었습니다");
		}
		model.addAttribute("loc","/");
		return "common/msg";
	}
	@RequestMapping(value="/joinMember.do")
	public String joinMember(User u, Model model) {
		u.setBirth(u.getBirth().replaceAll("-", ""));
		int result = service.insertMember(u);
		if(result > 0) {
			model.addAttribute("msg", "회원가입 성공");
		}else {
			model.addAttribute("msg", "회원가입 실패");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
}
