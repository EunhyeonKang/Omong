package kr.or.partner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.partner.model.service.PartnerService;

@Controller
public class PartnerController {
	
@Autowired
private PartnerService serviec;

@RequestMapping(value="/insertPackage.do")
public String insertPackage() {
	return "partner/insertPackage";
}
@RequestMapping(value="/packageView.do")
public String packageView() {
	return "partner/packageView";
}
}
