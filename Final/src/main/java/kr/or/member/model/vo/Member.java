package kr.or.member.model.vo;

import lombok.Data;

@Data
public class Member {
	private int memberNo;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPhone;
	private String memberAddress;
	private String memberBirth;
	private String memberGender;
	private String changePw;
	private String loginPath;
	private String detailAddress;
	
}
