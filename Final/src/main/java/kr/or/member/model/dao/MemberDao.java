package kr.or.member.model.dao;


import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.Member;
import kr.or.member.model.vo.User;

@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public MemberDao() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User selectOneMember(User u) {
		return sqlSession.selectOne("member.selectOneMember",u);
	}


	public int insertMember(User u) {
		return sqlSession.insert("member.insertMember", u);
	}


	public int updateMember(User u) {
		return sqlSession.update("member.updateMember", u);
	}
	
	public ArrayList selectPlanList(User u) {
		return (ArrayList)sqlSession.selectList("plan.selectPlanList", u);
	}
	public int pwChangeMember(User u) {
		// TODO Auto-generated method stub
		return sqlSession.update("member.pwChangeMember",u);
	}
}
