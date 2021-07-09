package kr.or.member.model.vo;

import lombok.Data;

@Data
public  class User {
	// Member, Partner, Employee, Admin의 공통 요소
	private int no;
	private String id;
	private String pw;
	private String name;
	private String phone;
	private String address;
	private String birth;
	private String gender;
	private String changePw;
	private String detailAddress;
	private String profileImage;
	// Member, Partner, Employee, Admin의 구분 요소
	private String type;
	
	// Member의 단독요소
	private String loginpath;

	// Partner, Employee의 단독 요소
	private int yn;
	private String business;
	private String ceo;
	private String email;
	private String tel;
	
}