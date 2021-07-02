package kr.or.plan.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.plan.model.service.PlanService;
import kr.or.plan.model.vo.Day;
import kr.or.plan.model.vo.Plan;

@Controller
public class PlanController {
	@Autowired
	private PlanService service;
	
	@RequestMapping(value = "/plan.do")
	public String plan() {
		return "plan/planList";
	}
	@RequestMapping(value = "/topplanList.do")
	public String topplanList() {
		return "plan/topPlanList";
	}

	@RequestMapping(value = "/planInsert.do")
	public String planInsert() {
		return "plan/planInsert";
	}

	@RequestMapping(value = "/planDetail.do")
	public String planDetail(Plan p, HttpServletRequest request, Model model,HttpSession session) {
		String diff = request.getParameter("diff");
		session.setAttribute("plan", p);
		model.addAttribute("diff", diff);
		return "plan/planDetail";
	}
	
	@Transactional
	@ResponseBody
	@RequestMapping(value="insertPlan.do")
	public String insertPlan(Plan p, ArrayList<Day> d, Model model) {
		service.inserPlan(p, d);
		return "common/msg";
	}
}
