package kr.or.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.Employee;
import kr.or.member.model.vo.Member;
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


	public void selectOneEmployee(String msg) {
		// TODO Auto-generated method stub
		
	}

	public ArrayList<User> totalUserList() {
		// TODO Auto-generated method stub
		List<User> list = sqlSession.selectList("employee.totalUserList");
		return (ArrayList<User>)list;
	}

	
	public int insertNoticeEmployee(User u) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert("employee.insertNoticeEmployee", u);
		return result;
	}


	public ArrayList<User> totalPartnerList() {
		// TODO Auto-generated method stub
		List<User> list = sqlSession.selectList("employee.totalPartnerList");
		return (ArrayList<User>)list;
	}

	public List noticeEmployeeList() {
		// TODO Auto-generated method stub
		List<User> list = sqlSession.selectList("employee.noticeEmployeeList");
		return (ArrayList<User>)list;
	}

	public User detailNoticeEmployee(int noticeEmployeeNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("employee.detailNoticeEmployee",noticeEmployeeNo);
	}

	public int deleteNotice(int noticeEmployeeNo) {
		// TODO Auto-generated method stub
		return sqlSession.delete("employee.deleteNotice",noticeEmployeeNo);
	}

	public int updateYn(User u) {
		// TODO Auto-generated method stub
		return sqlSession.update("employee.updateYn",u);
	}

	public int updateNotice(User u) {
		// TODO Auto-generated method stub
		return sqlSession.update("employee.updateNotice",u);
	}

	public int kakaoUpdate(User u) {
		// TODO Auto-generated method stub
		return sqlSession.update("employee.kakaoUpdate",u);
	}

	public User kakaoSelect(User u) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("employee.kakaoSelect",u);
	}



	
	
}
