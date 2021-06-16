package kr.or.omong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.member.model.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	
	@RequestMapping(value="/map.do")
	public String map() {
		return "map/map";
	}
	@RequestMapping(value="/schedule.do")
	public String schedule() {
		return "schedule/scheduleList";
	}
}
