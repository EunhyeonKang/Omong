package kr.or.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.Employee;
import kr.or.member.model.vo.User;

@Repository
public class EmployeeDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	public EmployeeDao() {
		super();
		System.out.println("Dao 생성");
	}

	public int insertEmployee(User u) {
		return sqlSession.insert("employee.insertEmployee", u);
	}
	
	/*
	public int insertEmployee(Employee e) {
		return sqlSession.insert("employee.insertEmployee", e);
	}
	*/

	public Employee selectOneEmployee(Employee e) {
		return sqlSession.selectOne("employee.selectOneEmployee",e);
	}

	public int employeeUpdate(Employee e) {
		return sqlSession.update("employee.employeeUpdate",e);
	}
	
}
