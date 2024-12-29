<%@page import="utils.JSFunction"%>
<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String user_id = request.getParameter("user_id"); //IdSaveMain.jsp의 form에서 받아온 값 변수로 저장
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");

if ( "must".equals(user_id) && "1234".equals(user_pw)) { //DB 연결 X이므로 must, 1234와 id, pass 비교
	if(save_check != null && save_check.equals("Y")) { //save_check가 null이 아니고 Y와 같다면 == 체크되어있다면
		CookieManager.makeCookie(response, "loginId", user_id, 86400);  //새 쿠키 생성(loginId라는 이름, user_id(must)넣어서)
	}
	else {
		CookieManager.deleteCookie(response,"loginId"); //쿠키 삭제
	}
	
	JSFunction.alertLocation("로그인에 성공했습니다", "IdSaveMain.jsp", out); //로그인 성공시 IdSaveMain.jsp로 이동후 메세지 출력
}
else {
	JSFunction.alertBack("로그인에 실패했습니다", out); //로그인 실패시 로그인에 실패했습니다 메세지 alert로 출력
}
%>