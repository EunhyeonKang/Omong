package kr.or.admin.model.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.admin.model.vo.Admin;
@Repository
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSession;	

	public Admin selectOneAdmin(Admin a) {
		
		return sqlSession.selectOne("admin.selectOneAdmin",a);
	}

}
