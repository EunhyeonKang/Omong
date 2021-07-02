package kr.or.plan.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.plan.model.vo.Day;
import kr.or.plan.model.vo.Plan;

@Repository
public class PlanDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertPlan(Plan p) {
		return sqlSession.insert("plan.insertPlan", p);
	}
	public int insertDay(Day d) {
		return sqlSession.insert("plan.insertDay", d);
	}
	public int selectOneDay(int planNo) {
		return sqlSession.selectOne("plan.selectOneDay", planNo);
	}
	public int deleteDay(int planNo) {
		return sqlSession.delete("plan.deleteDay", planNo);
	}
}
