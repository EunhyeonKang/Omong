package kr.or.plan.model.vo;

import lombok.Data;

@Data
public class Day {
	private int dayNo;
	private int dayPlan;
	private int dayDate;
	private String dayLatitude;
	private String dayLongitude;
	private String dayTitle;
	private String dayAddress;
	private int next;
}
