package kr.or.plan.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.plan.model.dao.PlanDao;

@Service
public class PlanService {
	@Autowired
	private PlanDao dao;
}
