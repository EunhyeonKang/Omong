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
import org.springframework.web.bind.annotation.SessionAttribute;

import com.google.gson.JsonArray;
import com.google.gson.JsonParser;

import kr.or.plan.model.service.PlanService;
import kr.or.plan.model.vo.Plan;

@Controller
public class PlanController {
	@Autowired
	private PlanService service;
	
	@RequestMapping(value = "/plan.do")
	public String plan(Model model) {
		ArrayList<Plan> recommendList = service.selectRecommendPlanList();
		ArrayList<Plan> newList = service.selectNewPlanList();
		ArrayList<Plan> viewList = service.selectViewPlanList();
		model.addAttribute("recommendList", recommendList);
		model.addAttribute("newList", newList);
		model.addAttribute("viewList", viewList);
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
	@RequestMapping(value="insertPlan.do", produces = "text/html;charset=UTF-8")
	public String insertPlan(@SessionAttribute(required=false) Plan plan, String data, Model model) {
		JsonParser parser = new JsonParser();
		JsonArray list = (JsonArray) parser.parse(data);
		int result = service.insertPlan(plan, list);
		if(result>0) {
			return "등록 완료";
		}
		return "등록 실패. 관리자에게 문의바랍니다. 에러코드 [00pi]";
	}
}
