package kr.or.member.model.dao;

import java.util.ArrayList;
import java.util.List;

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
	

	public User selectOneEmployee(User u) {
		return sqlSession.selectOne("employee.selectOneEmployee",u);
	}

	public int employeeUpdate(User u) {
		return sqlSession.update("employee.employeeUpdate",u);
	}

	public ArrayList<User> totalUserList() {
		List<User> list = sqlSession.selectList("employee.totalUserList");
		return (ArrayList<User>)list;
	}

	public void selectOneEmployee(String msg) {
		// TODO Auto-generated method stub
		
	}
	
}
