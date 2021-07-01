package kr.or.plan.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.plan.model.dao.PlanDao;
import kr.or.plan.model.vo.Day;
import kr.or.plan.model.vo.Plan;

@Service
public class PlanService {
	@Autowired
	private PlanDao dao;

	public void inserPlan(Plan p, ArrayList<Day> d) {
		int result = dao.insertPlan(p);
		if(result<0) {
			int planNo = dao.selectOnePlan();
			result = dao.insertDay(d, planNo);
		}
	}
}
