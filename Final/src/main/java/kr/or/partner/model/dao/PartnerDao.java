package kr.or.partner.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.User;

@Repository
public class PartnerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public User selectOnePartner(User u) {
		
		return sqlSession.selectOne("partner.selectOnePartner" ,u);
	}

	public int insertPartner(User u) {
		// TODO Auto-generated method stub
		return sqlSession.insert("partner.insertPartner" , u);
	}
}
