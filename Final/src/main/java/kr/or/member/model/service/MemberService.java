package kr.or.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.member.model.dao.MemberDao;
import kr.or.member.model.vo.User;

@Service
public class MemberService {
	@Autowired
	private MemberDao dao;
	
	
	public MemberService() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User selectOneMember(User u) {
		return dao.selectOneMember(u);
	}
	
	public int insertMember(User u) {
		return dao.insertMember(u);
	}


	public int updateMember(User u) {
		return dao.updateMember(u);
	}


	public ArrayList selectPlanList(User u) {
		return dao.selectPlanList(u);
	}
	@Transactional
	public int pwChangeMember(User u) {
		// TODO Auto-generated method stub
		return dao.pwChangeMember(u);
	}
}
