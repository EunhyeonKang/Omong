package kr.or.plan.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.mapPartner.model.vo.MapPartner;
import kr.or.member.model.vo.User;
import kr.or.plan.model.vo.Day;
import kr.or.plan.model.vo.Plan;

@Repository
public class PlanDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public void insertPlan(Plan p) {
		sqlSession.insert("plan.insertPlan", p);
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
	public ArrayList<Plan> selectRecommendPlanList() {
		List list = sqlSession.selectList("plan.selectRecommendPlanList");
		return (ArrayList<Plan>)list;
	}
	public ArrayList<Plan> selectNewPlanList() {
		List list = sqlSession.selectList("plan.selectNewPlanList");
		return (ArrayList<Plan>)list;
	}
	public ArrayList<Plan> selectViewPlanList() {
		List list = sqlSession.selectList("plan.selectViewPlanList");
		return (ArrayList<Plan>)list;
	}
	public Plan selectOnePlan(Plan plan) {
		return sqlSession.selectOne("plan.selectOnePlan", plan);
	}
	public ArrayList<Day> selectOnePlanDays(Plan plan) {
		List list = sqlSession.selectList("plan.selectOnePlanDays", plan); 
		return (ArrayList<Day>)list;
	}
	public int updateOnePlan(Plan plan) {
		return sqlSession.update("plan.updateOnePlan", plan);
	}
	public ArrayList<MapPartner> selectMapPartnerSearch(MapPartner mapPartner) {
		List list = sqlSession.selectList("partner.selectMapPartnerSeach", mapPartner);
		return (ArrayList<MapPartner>)list;
	}
}
