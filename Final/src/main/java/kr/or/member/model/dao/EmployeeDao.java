package kr.or.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.Notice;
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

	
	public int insertNoticeEmployee(Notice n) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert("employee.insertNoticeEmployee", n);
		return result;
	}


	public ArrayList<User> totalPartnerList() {
		// TODO Auto-generated method stub
		List<User> list = sqlSession.selectList("employee.totalPartnerList");
		return (ArrayList<User>)list;
	}

	public List noticeEmployeeList() {
		// TODO Auto-generated method stub
		List<Notice> list = sqlSession.selectList("employee.noticeEmployeeList");
		return (ArrayList<Notice>)list;
	}

	public Notice detailNoticeEmployee(int noticeEmployeeNo) {
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

	public int updateNotice(Notice n) {
		// TODO Auto-generated method stub
		return sqlSession.update("employee.updateNotice",n);
	}

	public int kakaoUpdate(User u) {
		// TODO Auto-generated method stub
		return sqlSession.update("employee.kakaoUpdate",u);
	}

	public User kakaoSelect(User u) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("employee.kakaoSelect",u);
	}

	public int uploadPhoto(User u) {
		// TODO Auto-generated method stub
		return sqlSession.update("employee.uploadPhoto",u);
	}

	public int employeeDelete(String id) {
		// TODO Auto-generated method stub
		return sqlSession.delete("employee.employeeDelete",id);
	}

	public int updateReadCount(Notice n) {
		// TODO Auto-generated method stub
		return sqlSession.update("employee.updateReadCount",n);
	}

	public String idSearch(User u) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("employee.idSearch",u);
	}

	public String pwSearch(User u) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("employee.pwSearch",u);
	}



	
	
}
