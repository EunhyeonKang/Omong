package kr.or.mapPartner.controller;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import kr.or.mapPartner.model.service.MapPartnerService;

@Component
public class MapPartnerController {

	@Autowired
	private MapPartnerService service;
	
	// API 업로드용
	@Scheduled(cron = "0 0 10 * * *")
	// Throws 추가되는 이유
	public void updateMapPartner(){
		String url = "https://api.visitjeju.net/vsjApi/contents/searchList";
		String apiKey = "yukkkcef6j498bq2";
		String locale = "kr";
		//
		try {
			String result = Jsoup.connect(url).data("apiKey", apiKey).data("locale", locale).userAgent("Mozilla").ignoreContentType(true).execute().body();
			//
			JsonParser parser = new JsonParser();
			//
			JsonObject tourArray = (JsonObject)parser.parse(result);
			// 총 페이지 수 추출
			int pageCount = tourArray.get("pageCount").getAsInt();
			for(int i = 1; i <= pageCount ; i ++) {
				String page = String.valueOf(i);
				System.out.println(page);
				result = Jsoup.connect(url).data("apiKey", apiKey).data("locale", locale).data("page", page).userAgent("Mozilla").ignoreContentType(true).execute().body();
				tourArray = (JsonObject) parser.parse(result);
				JsonArray items = (JsonArray)tourArray.get("items");
				service.selectCheckMapPartner(items);
				System.out.println(i);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
}
