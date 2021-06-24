package kr.or.mapPartner.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.JsonArray;

import kr.or.mapPartner.model.vo.MapPartner;

@Repository
public class MapPartnerDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int selectCheckMapPartner(String contentsid){
		int result = sqlSession.selectOne("mapPartner.selectCheckMapPartner", contentsid);
		return result;
	}

	public int insertMapPartner(MapPartner mapPartner) {
		return sqlSession.insert("mapPartner.insertMapPartner", mapPartner); 
	}

	public int updateMapPartner(MapPartner mapPartner) {
		return sqlSession.update("mapPartner.updateMapPartner", mapPartner);
	}
}
