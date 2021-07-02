package kr.or.plan.model.dao;

import java.util.ArrayList;

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

	public int selectOnePlan() {
		return sqlSession.selectOne("plan.selectOnePlan");
	}

	public int insertDay(ArrayList<Day> d, int planNo) {
		return sqlSession.insert("plan.insertDay", d);
	}
}
