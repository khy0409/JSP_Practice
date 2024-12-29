<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 영역</title>
</head>
<body>
	<h2>포워드로 전달된 페이지</h2>
	<h4>RequestMain 파일의 리퀘스트 영역 속성 읽기</h4>
	<% /* request영역의 속성 불러와서 변수에 저장, 다른 page이므로 변수명 같아도 문제 X */
	Person pPerson = (Person)(request.getAttribute("requestPerson"));
	%>
	<ul> <!-- 가져온 값을 출력, request영역은 이동한 페이지까지 속성 공유 == 문제 X -->
		<li>String 객체 : <%= request.getAttribute("requestString") %></li>
		<li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
	</ul>
	<h4>매개변수로 전달된 값 출력하기</h4>
	<%/* 포워드하며 가져온 쿼리스트링 매개변수 출력 */
	request.setCharacterEncoding("UTF-8"); /* 매개변수 중에 한글이 있기때문에 UTF-8로 변경 */
	out.println(request.getParameter("paramHan")); /* paramHan이라는 이름의 매개변수 출력 */
	out.println(request.getParameter("paramEng"));
	%>
</body>
</html>