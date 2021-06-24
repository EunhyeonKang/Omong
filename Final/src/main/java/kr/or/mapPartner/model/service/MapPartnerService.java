package kr.or.mapPartner.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import kr.or.mapPartner.model.dao.MapPartnerDao;
import kr.or.mapPartner.model.vo.MapPartner;

@Service
public class MapPartnerService {
	@Autowired
	private MapPartnerDao dao;
	
	 
	@Transactional
	public void selectCheckMapPartner(JsonArray items) {
		for(int i = 0; i<items.size(); i++) {
			// JsonArray에서 i번째 해당하는 객체를 꺼냄
			JsonObject item = (JsonObject) items.get(i);
			// i번째 해당하는 객체 중 key 값이 contentsid인 value를 문자열로 불러옴
			String contentid = item.get("contentsid").getAsString();

			MapPartner mapPartner = new MapPartner();
			mapPartner.setMapPartnerId(item.get("contentsid").getAsString());
			mapPartner.setMapPartnerName(item.get("title").getAsString());
			if(!item.get("roadaddress").isJsonNull()) {
				mapPartner.setMapPartnerAddress(item.get("roadaddress").getAsString());
			}else {
				mapPartner.setMapPartnerAddress("null");
			}
			
			if(!item.get("latitude").isJsonNull()) {
				mapPartner.setMapPartnerLatitude(item.get("latitude").getAsString());
			}else {
				mapPartner.setMapPartnerLatitude("null");
			}
			
			if(!item.get("longitude").isJsonNull()) {
				mapPartner.setMapPartnerLongitude(item.get("longitude").getAsString());
			}else {
				mapPartner.setMapPartnerLongitude("null");
			}
			// item 객체 내부에 키값 repPhoto인 객체 추출
			mapPartner.setMapPartnerThumbnailpath(null);
			if(!item.get("repPhoto").isJsonNull()) {
				JsonObject repPhoto = item.getAsJsonObject("repPhoto");
				// repPhoto 객체 내부에 키값 photoid인 객체 추출
				if(!repPhoto.get("photoid").isJsonNull()) {
					JsonObject photoid = repPhoto.getAsJsonObject("photoid");
					if(!photoid.get("thumbnailpath").isJsonNull()) {
						mapPartner.setMapPartnerThumbnailpath(photoid.get("thumbnailpath").getAsString());
					}
				}
			}
			int result = dao.selectCheckMapPartner(contentid);
			if(result == 0) {
				//System.out.println(1);
				dao.insertMapPartner(mapPartner);
			}else {
				//System.out.println(2);
				dao.updateMapPartner(mapPartner);
			}
		}
	}
	
}
