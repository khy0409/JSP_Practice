<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	<h2>1. 쿠키(Cookie) 설정</h2>
	<%
	Cookie cookie = new Cookie("myCookie", "쿠키맛나요"); //쿠키 생성(("쿠키 이름", "넣을 값"))
	cookie.setPath(request.getContextPath()); //getContextPath():현재 컨텍스트 경로(ex. /CookieMain) 가져옴 == 현재 컨텍스트 경로로 설정
	cookie.setMaxAge(3600); //쿠키 유지 시간 == 1시간
	response.addCookie(cookie); //서버에서 클라이언트로 쿠키 추가
	%>
	
	<h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
	<%
	Cookie[] cookies = request.getCookies(); //클라이언트에게서 쿠키 받아와서 저장
	if(cookies != null) { /* 각 쿠키의 이름, 값을 얻어옴 */
		for(Cookie c : cookies) {
			String cookieName = c.getName();
			String cookieValue = c.getValue();
			out.println(String.format("%s : %s<br/>", cookieName, cookieValue));
		}
	}
	%>
	
	<h2>3. 페이지 이동후 쿠키값 확인하기</h2>
	<a href="CookieResult.jsp">
		다음페이지에서 쿠키값 확인하기
	</a>
</body>
</html>