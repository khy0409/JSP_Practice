<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String chkVal = request.getParameter("inactiveToday"); //chkVal에 inactiveToday 값 넣음

if(chkVal != null && chkVal.equals("1")) { //chkVal이 null이 아니면서 1이라면
	Cookie cookie = new Cookie("PopupClose", "off"); //cookie 객체 생성
	cookie.setPath(request.getContextPath()); //컨텍스트 루트 설정
	cookie.setMaxAge(60*60*24); //cookie 유지 시간 하루
	response.addCookie(cookie); //응답 객체에 추가
	out.println("쿠키 : 하루동안 열지 않음"); //PopupMain.jsp의 resData로 반환
}
%>