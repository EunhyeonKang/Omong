package kr.or.omong.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import kr.or.member.model.service.EmployeeService;
import kr.or.member.model.vo.Notice;
import kr.or.member.model.vo.User;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService service;
	
	@RequestMapping(value="/join_employee.do")
	public String join_employee() {
		return "member/join_employee";
	}
	
	@RequestMapping(value="/updateNoticeFrm.do")
	public String updateNoticeFrm(int noticeEmployeeNo,Model model) {
		Notice n = service.detailNoticeEmployee(noticeEmployeeNo);
		model.addAttribute("u",n);
		return "notice/updateNotice";
	}
	
	@RequestMapping(value="/uploadImage.do")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request,Model model )  {
		String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/notice/");
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		try {
			FileOutputStream fos = new FileOutputStream(new File(savePath + savedFileName));
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			byte[] bytes = multipartFile.getBytes();
			bos.write(bytes);
			bos.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return savedFileName;
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
	@RequestMapping(value = "/totalPartnerList.do", produces = "application/json; charset=utf-8")
	public String totalPartnerList() {
		ArrayList<User> list = service.totalPartnerList();
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
	@RequestMapping(value="/detailNoticeEmployee.do")
	public String detailNoticeEmployee(int noticeEmployeeNo,Model model) {
		Notice n = service.detailNoticeEmployee(noticeEmployeeNo);
		model.addAttribute("u",n);
		return "notice/noticeView";
	}
	@RequestMapping(value="/deleteNoticeEmployee.do")
	public String deleteNotice(int noticeEmployeeNo,HttpSession session, Model model) {		
		int result = service.deleteNotice(noticeEmployeeNo);
		if(result>0) {
			model.addAttribute("msg","글이 삭제되었습니다.");
		}else {
			model.addAttribute("msg","삭제 실패했습니다.");
		}
		model.addAttribute("loc","/noticeList.do");
		return "common/msg";
	}
	
	@RequestMapping(value="/updateNoticeEmployee.do")
	public String updateNotice(Notice n,Model model) {
		int result = service.updateNotice(n);
		if(result != -1) {
			model.addAttribute("msg","글이 수정되었습니다.");
		}else {
			model.addAttribute("msg","수정 실패했습니다.");
		}

		model.addAttribute("loc","/noticeList.do");
		return "common/msg";
	}
	
	@RequestMapping(value="/employeeDelete.do")
	public String employeeDelete(Model model,String id,HttpSession session) {
		int result = service.employeeDelete(id);
		if(result != -1) {
			session.invalidate();
			model.addAttribute("msg","삭제성공");
		}else {
			model.addAttribute("msg","삭제실패");
		}
		model.addAttribute("loc","/");
		return "common/msg";
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
	public String employeeUpdate(User u,Model model,HttpServletRequest request) {
		int result = service.employeeUpdate(u);
		if(result != -1) {
			User user = service.selectOneEmployee(u);
			HttpSession session = request.getSession();
			session.setAttribute("u", user);
			model.addAttribute("msg","수정완료");
			
		}else {
			model.addAttribute("msg","수정실패");
		}
		model.addAttribute("loc","/mypage.do?memberId="+u.getId());
		return "common/msg";
	}
	
	@RequestMapping(value="/kakaoUpdate.do")
	public String kakaoUpdate(User u,HttpServletRequest request,Model model) {
		int result = service.kakaoUpdate(u);
		if(result != -1) {
			HttpSession session = request.getSession();
			/* User user = service.kakaoSelect(u); */
			session.setAttribute("user", u);
			model.addAttribute("msg","가입완료");
		}else {
			model.addAttribute("msg","가입실패");
		}
		model.addAttribute("loc","/");
		return "common/msg";
	}
	@RequestMapping(value="/updateYn.do")
	public String updateYn(User u,Model model) {
		int result = service.updateYn(u);
		if(result != -1) {
			model.addAttribute("msg","등록성공");
		}else {
			model.addAttribute("msg","등록실패");
		}
		model.addAttribute("loc","/employeeMypage.do");
		return "common/msg";
	}
	@RequestMapping(value="/noticeList.do")
	public String noticeList(Model model) {
		ArrayList<Notice> list = service.noticeEmployeeList();
		model.addAttribute("list",list);
		return "notice/noticeList";
	}
	@RequestMapping(value="/insertNoticeEmployee.do")
	public String insertNoticeEmployee(Notice n, Model model) {
		int result = service.insertNoticeEmployee(n);
		if(result != -1) {
			model.addAttribute("msg","등록성공");
		}else {
			model.addAttribute("msg","등록실패");
		}
		model.addAttribute("loc","/noticeList.do");
		return "common/msg";
	}
	@ResponseBody
	@RequestMapping(value="readCount")
	public int readCount(int noticeEmployeeViews,int noticeEmployeeNo,Notice n,Model model) {
		n.setNoticeEmployeeViews(noticeEmployeeViews);
		n.setNoticeEmployeeNo(noticeEmployeeNo);
		int result = service.updateReadCount(n);
		return result;
	}
	
	@RequestMapping(value="idpwSearch.do")
	public String idpwSearch() {
		return "admin/idpwSearch";
	}
	
	@RequestMapping(value="idSearch.do")
	public String idSearch(User u, Model model) {
		String id = service.idSearch(u);
		if(id != null) {
			model.addAttribute("msg","아이디는 "+id+" 입니다.");
		}else {
			model.addAttribute("msg","일치하는 아이디가 없습니다.");
		}
		model.addAttribute("loc","/idpwSearch.do");
		return "common/msg";
	}
	@RequestMapping(value="pwSearch.do")
	public String pwSearch(User u, Model model) {
		String pw = service.pwSearch(u);
		if(pw != null) {
			model.addAttribute("msg","비밀번호는 "+pw+" 입니다.");
		}else {
			model.addAttribute("msg","일치하는 비밀번호가 없습니다.");
		}
		model.addAttribute("loc","/idpwSearch.do");
		return "common/msg";
	}
}
