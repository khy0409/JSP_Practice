<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글 깨질때, 다국어 지원하는 UTF-8로 인코딩 -->
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<ul>
		<li>데이터 전송 방식 : <%= request.getMethod() %></li> <!-- Post or get 반환 -->
		<li>URL : <%= request.getRequestURL() %></li> <!-- host 포함 전체 주소 반환 -->
		<li>URI : <%= request.getRequestURI() %></li> <!-- host 제외한 주소 반환(컨텍스트 루트부터) -->
		<li>프로토콜 : <%= request.getProtocol() %></li> 
		<li>서버명 : <%= request.getServerName() %></li>
		<li>서버 포트 : <%= request.getServerPort() %></li>
		<li>클라이언트 IP 주소 : <%= request.getRemoteAddr() %></li>
		<li>쿼리스트링 : <%= request.getQueryString() %></li> <!-- 주소 뒷부분의 매개변수 전달을 위한 query 전체 반환 -->
		<li>전송된 값1 : <%= request.getParameter("eng") %></li> <!-- query 중 name이 eng인 특정값 반환 -->
		<li>전송된 값2 : <%= request.getParameter("han") %></li>
	</ul>
</body>
</html>