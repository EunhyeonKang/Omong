package kr.or.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.member.model.dao.MemberDao;
import kr.or.member.model.vo.Member;
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

}
