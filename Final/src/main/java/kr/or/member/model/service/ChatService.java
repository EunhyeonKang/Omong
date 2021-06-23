package kr.or.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class ChatService extends TextWebSocketHandler{
	//접속한 회원의 세션을 저장하는 리스트
		private ArrayList<WebSocketSession> sessionList;
		//각 세션별로 접속한 회원의 아이디를 저장하는 map
		private HashMap<WebSocketSession,String> employeeList;
		
		public ChatService() {
			super();
			sessionList = new ArrayList<WebSocketSession>();
			employeeList = new HashMap<WebSocketSession, String>();
		}
		//클라이언트가 최초로 웹소켓 서버에 접속했을 때 수행되는 메소드
		@Override
		public void afterConnectionEstablished(WebSocketSession session) {
			System.out.println("클라이언트가 접속함");
			//새로접속한 클라이언트의 웹소켓 세션을 리스트에 추가
			sessionList.add(session);
		}
		//클라이언트가 서버로 메세지를 전송했을 때 수행되느 메소드(실제 웹소켓로직구현하는메소드)
		@Override
		protected void handleTextMessage(WebSocketSession session,TextMessage message) 
				throws Exception {
			//jsp에서 웹소켓을 통해 보내준 메세지값(문자열) 확인
			System.out.println(message.getPayload());
			//문자열을 JSON타입으로 처리하기 위한 객체 생성
			JsonParser parser= new JsonParser();
			//parser를 이용하여 JSON데이터를 분석
			JsonElement element = parser.parse(message.getPayload());
			//키가 type인 value를 추출
			String type = element.getAsJsonObject().get("type").getAsString();
			//키가 msg인 value를 추출
			String msg = element.getAsJsonObject().get("msg").getAsString();
			if(type.equals("enter")) {
				//map에 세션에 해당하는 memberId를 저장
				employeeList.put(session, msg);
				String sendMsg = "<p>"+msg+"님이 입장하셨습니다.</p>";
				for(WebSocketSession s : sessionList) {
					if(!session.equals(s)) {//본인에게는 전송 제외
						TextMessage tm = new TextMessage(sendMsg);
						s.sendMessage(tm);
					}
				}
			}else if(type.equals("chat")) {
				String sendMsg = "<div class='chat left'><span class='chatId'>"
			+employeeList.get(session)+" : </span>"+msg+"</div>";
				for(WebSocketSession s : sessionList) {
					if(!session.equals(s)) {
						TextMessage tm = new TextMessage(sendMsg);
						s.sendMessage(tm);
					}
				}
			}
		}
		//클라이언트가 연결을 끊을 떄 수행되는 메소드
		@Override
		public void afterConnectionClosed(WebSocketSession session,CloseStatus status)
			throws Exception{
			//접속이 끊긴 세션을 리스트에서 제거
			sessionList.remove(session);
			for(WebSocketSession s : sessionList) {
				TextMessage tm = new TextMessage("<p>"+employeeList.get(session)+"님이 퇴장하셨습니다.</p>");
				s.sendMessage(tm);
			}
			employeeList.remove(session);
		}
}
