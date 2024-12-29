<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieResult.jsp</title>
</head>
<body>
	<h2>쿠키값 확인하기(쿠키가 생성된 이후의 페이지)</h2>
	<%
	Cookie[] cookies = request.getCookies(); //servlet request 사용해서 클라이언트의 cookies 받아와 배열에 넣음
	if (cookies != null) {
 		/* for (int i=0; i < cookies.length; i++) { //for문을 사용해 쿠키값 하나하나 얻어옴
			String cookieName = cookies[i].getName();
			String cookieValue = cookies[i].getValue();
			out.println(String.format("쿠키명 : %s - 쿠키값 : %s <br/>", cookieName, cookieValue));
		} 아래 코드와 같은 코드, 위가 책에 써있던 코드 vs 향상된 for*/
		for (Cookie c : cookies) {
			String cookieName = c.getName();
			String cookieValue = c.getValue();
			out.println(String.format("쿠키명 : %s - 쿠키값 : %s <br/>", cookieName, cookieValue));
		}
	}
	%>
</body>
</html>