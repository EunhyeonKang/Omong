package kr.or.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.member.model.dao.EmployeeDao;
import kr.or.member.model.vo.Employee;
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

	public int employeeUpdate(User u) {
		return dao.employeeUpdate(u);
	}

	public ArrayList<User> totalUserList() {
		// TODO Auto-generated method stub
		return dao.totalUserList();
	}
	@Transactional
	public int insertNoticeEmployee(User u) {
		// TODO Auto-generated method stub
		int result1 = dao.insertNoticeEmployee(u);
		
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

	public ArrayList<User> noticeEmployeeList() {
		// TODO Auto-generated method stub
		List list = dao.noticeEmployeeList();
		return (ArrayList<User>)list;
	}

	public User detailNoticeEmployee(int noticeEmployeeNo) {
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

	public int updateNotice(User u) {
		// TODO Auto-generated method stub
		return dao.updateNotice(u);
	}

	


}
