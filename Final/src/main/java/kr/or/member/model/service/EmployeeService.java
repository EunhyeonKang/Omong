package kr.or.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.member.model.dao.EmployeeDao;
import kr.or.member.model.vo.Notice;
import kr.or.member.model.vo.User;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeDao dao;
	public EmployeeService() {
		super();
		System.out.println("Service 생성");
	}

	public int insertEmployee(User u) {
		return dao.insertEmployee(u);
	}
	
	public User selectOneEmployee(User u) {
		return dao.selectOneEmployee(u);
	}
	@Transactional
	public int employeeUpdate(User u) {
		return dao.employeeUpdate(u);
	}

	public ArrayList<User> totalUserList() {
		// TODO Auto-generated method stub
		return dao.totalUserList();
	}
	@Transactional
	public int insertNoticeEmployee(Notice n) {
		// TODO Auto-generated method stub
		int result1 = dao.insertNoticeEmployee(n);
		
		if(result1>0) {
			return result1;
		}else {
			return -1;
		}
	}

	public ArrayList<User> totalPartnerList() {
		// TODO Auto-generated method stub
		return dao.totalPartnerList();
	}

	public ArrayList<Notice> noticeEmployeeList() {
		// TODO Auto-generated method stub
		List list = dao.noticeEmployeeList();
		return (ArrayList<Notice>)list;
	}

	public Notice detailNoticeEmployee(int noticeEmployeeNo) {
		// TODO Auto-generated method stub
		return dao.detailNoticeEmployee(noticeEmployeeNo);
	}

	public int deleteNotice(int noticeEmployeeNo) {
		// TODO Auto-generated method stub
		int result = dao.deleteNotice(noticeEmployeeNo);
		return result;
	}

	public int updateYn(User u) {
		// TODO Auto-generated method stub
		return dao.updateYn(u);
	}

	public int updateNotice(Notice n) {
		// TODO Auto-generated method stub
		return dao.updateNotice(n);
	}

	public int kakaoUpdate(User u) {
		// TODO Auto-generated method stub
		return dao.kakaoUpdate(u);
	}

	public User kakaoSelect(User u) {
		// TODO Auto-generated method stub
		return dao.kakaoSelect(u);
	}

	

	public int uploadPhoto(User u) {
		// TODO Auto-generated method stub
		return dao.uploadPhoto(u);
	}

	public int employeeDelete(String id) {
		// TODO Auto-generated method stub
		return dao.employeeDelete(id);
	}

	public int updateReadCount(Notice n) {
		// TODO Auto-generated method stub
		return dao.updateReadCount(n);
	}

	public String idSearch(User u) {
		// TODO Auto-generated method stub
		return dao.idSearch(u);
	}

	public String pwSearch(User u) {
		// TODO Auto-generated method stub
		return dao.pwSearch(u);
	}

	


}
