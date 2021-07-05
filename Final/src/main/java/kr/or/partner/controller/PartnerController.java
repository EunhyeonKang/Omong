package kr.or.partner.controller;

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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.or.member.model.vo.User;
import kr.or.partner.model.service.PartnerService;
import kr.or.partner.model.vo.Package;

@Controller
public class PartnerController {

	@Autowired
	private PartnerService service;

	@RequestMapping(value = "/insertPackage.do")
	public String insertPackage() {
		return "partner/insertPackage";
	}

	

	@RequestMapping(value = "/partnerLogin.do")
	public String login(User u, HttpServletRequest request, Model model ) {
		User partner = service.selectOnePatner(u);

		if (partner != null) {
			if (partner.getYn() == 0) {
				model.addAttribute("msg", "미승인된 아이디 입니다. 직원에게 문의바랍니다.");
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("u", partner);
				int partnerNo = partner.getNo();
				int pacYn = service.selectPackage(partnerNo);
				System.out.println(pacYn);
				session.setAttribute("pacYn", pacYn);
				
				model.addAttribute("msg", "로그인 성공");
				
			}
		} else {

			model.addAttribute("msg", "아이디 또는 비밀번호를 확인해주세요");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}

	@RequestMapping(value = "/partnerLogout.do")
	public String logout(User u, Model model, HttpSession session) {
		if (session != null) {
			session.invalidate();
			model.addAttribute("msg", "로그아웃 되었습니다.");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}

	@RequestMapping(value = "/partnerNotice.do")
	public String partnerNotice() {
		return "partner/partnerNotice";
	}

	@RequestMapping(value = "/join_partner.do")
	public String join_partner() {
		return "member/join_partner";
	}

	@RequestMapping(value = "/partnerJoin.do")
	public String partnerJoin(User u, Model model) {
		int result = service.insertPartner(u);
		if (result > 0) {
			model.addAttribute("msg", "회원가입 성공");
		} else {
			model.addAttribute("msg", "회원가입 실패");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}

	@RequestMapping(value = "/packageInsert.do")
	public String packageInsert(Package pa, Model model, int[] productNum, String[] productName, String[] optionName, String[] optionPrice , MultipartFile mainFiles[] ,MultipartFile subFiles[], HttpServletRequest request  ) {
		
		if(mainFiles[0].isEmpty()) {
			
		}else {
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/package/");
			for (MultipartFile file : mainFiles) {
				String filename = file.getOriginalFilename();
				String onlyFilename = filename.substring(0 , filename.indexOf("."));
				String extention = filename.substring(filename.indexOf("."));
				String filepath = null;
				int count = 0;
				while (true) {
					if(count == 0 ) {
						filepath = onlyFilename + extention;
						
					}else {
						filepath = onlyFilename + "_" + count + extention;
					}
					File checkFile = new File(savePath + filepath);
					if(!checkFile.exists()) {
						break;
						
					}
					count++;
				}
				pa.setPackageProductMainPicture(filepath);
				
				/* pa.setPackageProductSubPicture(); */
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
if(subFiles[0].isEmpty()) {
			
		}else {
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/package/");
			for (MultipartFile file : subFiles) {
				String filename = file.getOriginalFilename();
				String onlyFilename = filename.substring(0 , filename.indexOf("."));
				String extention = filename.substring(filename.indexOf("."));
				String filepath = null;
				int count = 0;
				while (true) {
					if(count == 0 ) {
						filepath = onlyFilename + extention;
						
					}else {
						filepath = onlyFilename + "_" + count + extention;
					}
					File checkFile = new File(savePath + filepath);
					if(!checkFile.exists()) {
						break;
						
					}
					count++;
				}
				pa.setPackageProductSubPicture(filepath);
				
				/* pa.setPackageProductSubPicture(); */
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
		int packageProduct = service.packageInsert(pa, productNum, productName, optionName, optionPrice);
		if (packageProduct > 0) {
			model.addAttribute("msg", "상품등록이 완료되었습니다.");
		} else {
			model.addAttribute("msg", "상품등록중 오류발생");
		}
		model.addAttribute("loc", "/");
		return "common/msg";

	}
	@RequestMapping(value = "/packageList.do")
	public String packageList(Model model) {
		ArrayList<Package> list = service.packageList();
		model.addAttribute("list", list);
		System.out.println(list.get(0).getPackageProductName());
		return "partner/packageList";
	}
	
	@RequestMapping(value = "/packageView.do")
	public String packageView(Model model , int partnerNo) {
		Package packageProduct = service.selectOnePackage(partnerNo);
		model.addAttribute("packageProduct", packageProduct);
		return "partner/packageView";
	}
}
