package kr.or.omong.controller;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class KakaoAPI {
	public String getAccessToken(String code) {
		String accessToken ="";
		String refreshToken ="";
		String reqURL ="https://kauth.kakao.com/oauth/token";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=5e721adb2b93aa6c4075e9c0c13ce4b6");
			sb.append("&redirect_uri=http://localhost:8082/kakaologin.do");
			sb.append("&code="+code);
			bw.write(sb.toString());
			bw.flush();
			int responseCode = conn.getResponseCode();
			//kakao response code
			System.out.println("response code = "+responseCode);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while((line = br.readLine())!=null) {
				result+=line;
			}
			//kakao response body
			System.out.println("response body = "+result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			accessToken = element.getAsJsonObject().get("access_token").getAsString();
			refreshToken = element.getAsJsonObject().get("refresh_token").getAsString();
			
			br.close();
			bw.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return accessToken;
	}
	public HashMap<String, Object> getUserInfo(String accessToken) {
		HashMap<String,Object> userInfo = new HashMap<String, Object>();
		String reqUrl = "https://kapi.kakao.com//v2/user/me";
		try {
			URL url = new URL(reqUrl);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "Bearer "+ accessToken);
			int responseCode = conn.getResponseCode();
			//userInfo response code
			System.out.println("responseCode : "+responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line="";
			String result="";
			while((line = br.readLine()) !=null) {
				result+=line;
			}
			//userInfo response body
			System.out.println("response body : " +result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakaoAccount = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakaoAccount.getAsJsonObject().get("email").getAsString();
			String gender = kakaoAccount.getAsJsonObject().get("gender").getAsString();
			String birthday = kakaoAccount.getAsJsonObject().get("birthday").getAsString();
//			String profile = kakaoAccount.getAsJsonObject().get("profile").getAsString();

			userInfo.put("kakaoAccount", kakaoAccount);
			userInfo.put("nickname", nickname);
			userInfo.put("email", email);
			userInfo.put("gender", gender);
			userInfo.put("birthday", birthday);
//			userInfo.put("profile", profile);

		}catch(Exception e) {
			e.printStackTrace();
		}
		return userInfo;
	}
	public void kakaologout(String accessToken) {
		String reqURL= "http://kapi.kakao.com/v1/user/logout";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "Bearer "+accessToken);
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode = "+responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String result = "";
			String line = "";
			while((line = br.readLine())!=null ) {
				result +=line;
			}
			System.out.println(result);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
