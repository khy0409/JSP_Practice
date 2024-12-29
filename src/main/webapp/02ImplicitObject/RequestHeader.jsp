<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
	<h2>3. 요청 헤더 정보 출력하기</h2>
	<%
	Enumeration<?> headers = request.getHeaderNames(); /* 모든 요청 헤더의 이름을 Enumeration으로 반환, warnning 제거 위해 와일드카드(<?>) 사용 */
	while (headers.hasMoreElements()) { /* while문에서 hasMoreElements()이용해 헤더명이 더 있는지 확인 */
		String headerName = (String)headers.nextElement(); /* 헤더명이 더 있다면 요청 헤더의 이름 얻어옴 */
		String headerValue = request.getHeader(headerName); /* getHeader 메소드에 받아온 헤더명 건넨 후 헤더 값 얻어옴 */
		out.print("헤더명 : " + headerName + ", 헤더값 : " + headerValue + "<br/>");
	}
	%>
	<p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다</p>
</body>
</html>