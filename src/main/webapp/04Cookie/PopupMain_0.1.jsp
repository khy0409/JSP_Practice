<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String popupMode = "on"; //팝업창을 띄울지 여부
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리 ver 0.1</title>
<style> /* 레이어 팝업창 위치 지정 */
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
		$('#closeBtn').clikc(function() { //id가 closeBtn인 요소를 클릭했을때
			$('#popup').hide(); //id가 popup인 요소를 숨김처리
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
	if (popupMode.equals("on")) { //popupMode 변수가 on이라면 보이게 설정
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