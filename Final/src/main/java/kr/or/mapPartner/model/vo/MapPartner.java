package kr.or.mapPartner.model.vo;

import lombok.Data;

@Data
public class MapPartner {
	private int mapPartnerNo;
	private String mapPartnerId;
	private String mapPartnerName;
	private String mapPartnerAddress;
	private String mapPartnerLatitude;
	private String mapPartnerLongitude;
	private String mapPartnerThumbnailpath;
}
