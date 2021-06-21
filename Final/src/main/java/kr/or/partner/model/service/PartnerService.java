package kr.or.partner.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.partner.model.dao.PartnerDao;

@Service
public class PartnerService {
	@Autowired
	private PartnerDao dao;
	
}
