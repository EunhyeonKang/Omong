package kr.or.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.admin.model.dao.AdminDao;
import kr.or.admin.model.vo.Admin;
@Service
public class AdminService {
	@Autowired
	private AdminDao dao;
	@Transactional	
	public Admin selectOneAdmin(Admin a) {
		return dao.selectOneAdmin(a);
	}
	
}
