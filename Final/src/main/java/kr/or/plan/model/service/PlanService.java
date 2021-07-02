package kr.or.plan.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import kr.or.plan.model.dao.PlanDao;
import kr.or.plan.model.vo.Day;
import kr.or.plan.model.vo.Plan;

@Service
public class PlanService {
	@Autowired
	private PlanDao dao;

	public int insertPlan(Plan plan, JsonArray list) {
		int result = dao.insertPlan(plan);
		for(int i=0; i<list.size(); i++) {
			JsonObject day = (JsonObject) list.get(i);
			System.out.println(day);
			int amount = dao.selectOneDay(plan.getPlanNo());
			for(int j=0; j<day.size(); j++) {
				Day d = new Day();
				JsonObject spot = (JsonObject) day.get(Integer.toString(j));
				d.setDayPlan(plan.getPlanNo());
				d.setDayDate(plan.getPlanStart());
				d.setNext(i);
				d.setDayLatitude(spot.get("lat").getAsString());
				d.setDayLongitude(spot.get("lng").getAsString());
				d.setDayTitle(spot.get("title").getAsString());
				d.setDayAddress(spot.get("address").getAsString());
				if(amount != 0) {
					result += dao.deleteDay(plan.getPlanNo());
				}
				result += dao.insertDay(d);
			}
		}
		return result;
	}

}
