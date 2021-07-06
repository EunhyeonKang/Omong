package kr.or.omong.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import kr.or.member.model.service.EmployeeService;
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
		User u = service.detailNoticeEmployee(noticeEmployeeNo);
		model.addAttribute("u",u);
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
	public String updateNotice(User u,Model model) {
		int result = service.updateNotice(u);
		if(result != -1) {
			model.addAttribute("msg","글이 수정되었습니다.");
		}else {
			model.addAttribute("msg","수정 실패했습니다.");
		}
		/*
		 * redirect:/detailNoticeEmployee.do?noticeEmployeeNo="+u.getNo()
		 */		
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
	public String employeeUpdate(User u,Model model) {
		int result = service.employeeUpdate(u);
		return "redirect:/employeeMypage.do?employeeId=" + u.getId();
	}
	@RequestMapping(value="/updateYn.do")
	public String updateYn(User u,Model model) {
		int result = service.updateYn(u);
		if(result != -1) {
			model.addAttribute("msg","등록성공");
		}else {
			model.addAttribute("msg","등록실패");
		}
		model.addAttribute("loc","/");
		return "common/msg";
	}
	@RequestMapping(value="/noticeList.do")
	public String noticeList(Model model) {
		ArrayList<User> list = service.noticeEmployeeList();
		model.addAttribute("list",list);
		return "notice/noticeList";
	}
	@RequestMapping(value="/insertNoticeEmployee.do")
	public String insertNoticeEmployee(User u, MultipartFile files[], HttpServletRequest request,Model model) {
		ArrayList<User> fileList = new ArrayList<User>();
		if(files[0].isEmpty()) {
			//첨부파일이 없는 경우
		}else {
			//첨부파일이 있는 경우
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/notice/");
			for (MultipartFile file : files) {
				// 실제 유저가 올린 파일명(filename)
				String filename = file.getOriginalFilename();
				// 유저가 올린 파일명을 마지막 . 기준으로 분리 test.txt ->test_1.txt img01.jpg -> img01_1.jpg
				String onlyFilename = filename.substring(0, filename.indexOf("."));
				String extention = filename.substring(filename.indexOf("."));
				String filepath = null;
				int count = 0;
				while (true) {
					if (count == 0) {
						filepath = onlyFilename + extention; // test.txt1
					} else {
						filepath = onlyFilename + "_" + count + extention; // test_1.txt
					}
					File checkFile = new File(savePath + filepath);
					if (!checkFile.exists()) {
						break;
					}
					count++;
				}
				
				User f = new User();
				f.setFilename(filename);
				f.setFilepath(filepath);
				u.setFilename(filename);
				u.setFilepath(filepath);
				fileList.add(f);
				System.out.println(savePath);
				System.out.println("filename : " + filename);
				System.out.println("filepath : " + filepath);
				try {
					FileOutputStream fos = new FileOutputStream(new File(savePath + filepath));
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		int result = service.insertNoticeEmployee(u);
		if(result != -1) {
			model.addAttribute("msg","등록성공");
		}else {
			model.addAttribute("msg","등록실패");
		}
		model.addAttribute("loc","/noticeList.do");
		return "common/msg";
	}
}
