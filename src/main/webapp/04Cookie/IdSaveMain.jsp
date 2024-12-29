<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String loginId = CookieManager.readCookie(request, "loginId"); //CookieManager 사용, loginId라는 쿠키의 값 받음

String cookieCheck = ""; //id 저장 여부 체크 박스
if (!loginId.equals("")) { //loginId가 비어있지 않다면
	cookieCheck = "checked"; //cookieCheck에 "checked" 값을 넣음
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie - 아이디 저장하기</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<form action="IdSaveProcess.jsp" method="post">
	아이디 : <input type="text" name="user_id" value="<%= loginId %>" /> <!-- 저장되어있는 loginId value에 넣음 -->
		<input type="checkbox" name="save_check" value="Y" <%=cookieCheck %> /><!-- cookieCheck에 들어있는 checked로 인해 체크된 상태로 보여짐 -->
		아이디 저장하기
		<br/>
	패스워드 : <input type="text" name="user_pw" />
	<br/>
		<input type="submit" value="로그인하기" />
	</form>
</body>
</html>