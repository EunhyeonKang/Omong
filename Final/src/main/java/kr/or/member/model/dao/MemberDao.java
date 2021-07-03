package kr.or.member.model.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
