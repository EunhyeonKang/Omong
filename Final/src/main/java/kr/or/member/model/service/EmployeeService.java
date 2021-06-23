package kr.or.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	/*
	 	public int insertEmployee(Employee e) {
		return dao.insertEmployee(e);
	}
	 */

	public Employee selectOneEmployee(Employee e) {
		return dao.selectOneEmployee(e);
	}

	public int employeeUpdate(Employee e) {
		return dao.employeeUpdate(e);
	}

}
