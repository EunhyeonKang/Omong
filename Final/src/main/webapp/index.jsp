<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모들에 오신것을 환영합니다</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<style>
  p{
  	color:black !important;
  	font-size: 12px !important;
  	padding : 10px;
  }
  #live-chat {
        position: fixed;
        bottom: 20px;
        right: 20px;
        border: none;
        border-radius: 16px;
        background: royalblue;
        color: white;
        padding: 12px;
        font-weight: bold;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        cursor: pointer;
    }

    .chatting {
        display: flex;
        position: absolute;
        box-shadow: 5px 5px 25px 0 rgb(46 61 73 / 20%);
        flex-direction: column;
        display: none;
        bottom: 0;
        right:0;
        width: 377px;
        height: auto;
        background-color: #fff;
        border-radius: 16px;
    }

    .messageArea {
        overflow-y: auto;
        border: 1px solid block;
        height: 400px;
        display: flex;
        flex-direction: column;

    }

    .messageArea>p {
        text-align: center;
        width: 100%;
    }

    .sendBox {
        box-sizing: border-box;
        display: flex;
        width: 100%;
        padding: 16px;
        border-top: 1px solid #ddd;
        align-items: center;
        justify-content: space-around;
        border-bottom-right-radius: 12px;
        border-bottom-left-radius: 12px;
    }

    #sendMsg {
        flex: 10;
        border: none;
        border-right: 0px;
        border-top: 0px;


    }

 	#closeBtn{
 		border-radius: 50%;
	    padding: 5px;
	    width: 40px;
	    background-color: #ffa707c7;
	    color: white;
	    border: 0;
	    outline: 0;
	    margin: 10px;
	    position: absolute;
	    right: 0;
 	}
 	
 	#closeBtn:hover{
 		border-radius: 50%;
	    padding: 5px;
	    width: 40px;
	    background-color: #ffa707c7;
	    color: red;
	    border: 0;
	    outline: 0;
	    margin: 10px;
	    position: absolute;
	    right: 0;
 	}
 	
    #sendBtn {
        flex: 1;
        color: rgb(255, 255, 255);
        text-align: center;
        border: none;
        background-color: #1877F2;
        border-radius: 50%;
        height: 40px;
        outline: none;
    }

    .chat {
        margin-bottom: 10px;
        padding: 8px;
        border-radius: 3px;
    }

    .right {
     	background-color: #b5beec;
        align-self: flex-end;
        margin-right: 20px;
    }

    .left {
        background-color: #f0e9ff;
        align-self: flex-start;
        margin-left: 20px;
    }
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script>
    var ws;
    var memberId;
    function initChat(param) {
        employeeId = param;
        //웹소켓 연결시도
        ws = new WebSocket("ws://172.30.1.2:8082/chat.do");
        //소켓 연결 성공시 실행될 함수 지정
        ws.onopen = startChat;
        //소켓으로 서버가 데이터를 전송하면 로직을 수행할 함수
        ws.onmessage = receiveMsg;
        //소켓연결이 종료되면 수행할 함수 지정
        ws.onclose = endChat;
        $(".chatting").slideDown();
    }
    function startChat() {
        var data = { type: "enter", msg: employeeId }
        ws.send(JSON.stringify(data)); //자바스크립트 객체를 문자열로 변환해서 서버로 전송
        appendChat("<p>채팅방에 입장했습니다</p>")
    }
    function receiveMsg(param) {
        appendChat(param.data);
    }
    function endChat() {
        appendChat("<p>채팅이 종료되었습니다.</p>")
    }
    function appendChat(msg) {
        $(".messageArea").append(msg);
        $(".messageArea").scrollTop($(".messageArea")[0].scrollHeight);
    }
    function sendMsg() {
        var msg = $("#sendMsg").val();
        if (msg != '') {
            var data = { type: "chat", msg: msg };
            //소켓 서버로 문자열 전송
            ws.send(JSON.stringify(data));
            //내화면에 출력
            appendChat("<div class='chat right'>" + msg + "</div>");
        }
    }
    function closeClick(){
    	ws.onclose = endChat;
    	$(".chatting").slideUp();
    	location.reload();
    }
    $(function () {
        $("#sendMsg").keydown(function (key) {
            if (key.keyCode == 13) {
                sendMsg();
            }
        })
    });
</script>

</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<!-- banner part start-->
	<section class="banner_part">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-lg-10">
					<div class="banner_text text-center">
						<div class="banner_text_iner">
							<form action="/search.do" method="GET">
								<input type="text" class="search" placeholder="검색어 입력">
								<i class="icon-search"></i> <input type="submit" value="검색" class="search-btn">
							</form>
							   <div class="chatting">
							   	<button id="closeBtn" onclick="closeClick();"><i class="fa fa-power-off fa_custom fa-2x"></i></button>
							   	<br>
                                <div class="messageArea"></div>
                                <div class="sendBox">
                                    <input type="text" id="sendMsg" placeholder="메세지를 입력해주세요">
                                    <button id="sendBtn" onclick="sendMsg(); "><i class="fa fa-send" style="padding-right:3px;"></i></button>
                                </div>
                            </div>

                            <button id="live-chat" onclick="initChat('${sessionScope.u.id}');">1:1 채팅 💬</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- banner part start-->
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>