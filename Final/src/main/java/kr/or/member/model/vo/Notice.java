package kr.or.member.model.vo;

import lombok.Data;

@Data
public class Notice {
	//NoticeEmployee
	private int noticeEmployeeNo;
	private String title;
	private String writer;
	private String content;
	private String noticeEmployeeDate;
	private String filename;
	private String filepath;
	private int noticeEmployeeViews;
}
