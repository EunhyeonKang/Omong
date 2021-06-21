package kr.or.partner.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PartnerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
}
