<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String popupMode = "on";

Cookie[] cookies = request.getCookies(); /* 클라이언트 쿠키 얻어옴 */
if (cookies != null) { /* cookie가 null이 아니라면 각각 변수에 name과 value를 넣음, 만약 name 중 popupClose가 있다면 popupMode에 넣음 */
	for (Cookie c : cookies) {
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		if(cookieName.equals("PopupClose")) {
			popupMode = cookieValue;
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리</title>
<style>
	div#popup {
	position : absolute; top : 100px; laft : 50px; color : yellow;
	width:270px; heigth:100px; background-color: gray;
	}
	
	div#popup>div {
	position : relative; background-color : #ffffff; top : 0px;
	border : 1px solid gray; padding : 10px; color : black;
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$('#closeBtn').click(function() {
			$('#popup').hide();
			var chkVal = $("input:checkBox[id=inactiveToday]:checked").val();
			/* input:checkBox중 id가 inactiveToday인 것이 체크되었는지 확인, val()은 체크되어있다면 checkBox value(1) 반환 */
			
			$.ajax({ //비동기 요청 보냄
				url : './PopupCookie.jsp', //PopupCookie.jsp 파일에
				type : 'get', //get 방식으로
				data : {inactiveToday : chkVal}, // inactiveToday에 chkVal을 넣어서
				dataType : "text", //응답 타입은 text로 지정
				success : function(resData) { //요청 성공시(resData == 서버로부터 받은 응답 데이터)
					if (resData != '') location.reload(); //resData가 null이 아니라면 페이지 새로고침
				}
			});
		});
	});
</script>
</head>
<body>
	<h2>팝업 메인 페이지</h2>
	<%
	for(int i=1; i<=10; i++) {
		out.print("현재 팝업창은 " + popupMode + "상태입니다<br/>");
	}
	if (popupMode.equals("on")) {
 	%>
 	<div id = "popup">
 	<h2 align="center">공지사항 팝업입니다</h2>
 	<div align="right"><form name="popFrm">
 	<input type="checkbox" id="inactiveToday" value="1" />
 	하루동안 열지않음
 	<input type="button" id="closeBtn" value="닫기" />
 	</form>
 	</div>
 	</div>
 	<%
	}
 	%>
</body>
</html>