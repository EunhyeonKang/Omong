package kr.or.plan.model.vo;

import lombok.Data;

@Data
public class Day {
	private int dayNo;
	private int dayPlan;
	private String dayDate;
	private String dayLatitude;
	private String dayLongitude;
	private String dayAddress;
}
