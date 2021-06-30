package kr.or.partner.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.User;
import kr.or.partner.model.vo.Option;
import kr.or.partner.model.vo.Product;
import kr.or.partner.model.vo.Package;

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

	public int packageInsert(Package pa) {		
		return sqlSession.insert("partner.packageInsert" , pa );
	}

	public int selectPacNo() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("partner.selectPacNo");
	}

	public int productInsert(Product pro) {
		// TODO Auto-generated method stub
		return sqlSession.insert("partner.productInsert", pro);
	}

	public int selectProNo() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("partner.selectProNo");
	}

	public int optionInsert(Option op) {
		// TODO Auto-generated method stub
		return sqlSession.insert("partner.optionInsert", op);
	}

	
	/*
	 * public int packageInsert(Package pa, String[] productName, String[]
	 * optionName, String[] optionPrice) { // TODO Auto-generated method stub return
	 * sqlSession.insert("partner.packageInsert" , pa , productName , optionName ,
	 * optionPrice); }
	 */
}
