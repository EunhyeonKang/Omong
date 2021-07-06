package kr.or.plan.model.vo;

import lombok.Data;

@Data
public class Plan {
	private int planNo;
	private String planPublic;
	private String planWriter;
	private String planTitle;
	private String planStart;
	private String planEnd;
	private String planContent;
	private int planLike;
	private int planShare;
	private int planView;
	
	// 일자 반복에 필요한 변수
	private String planDay;
}
