<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 영역</title>
</head>
<body>
	<h2>이동 후 page 영역의 속성 값 읽기</h2>
	<% /* 형변환 하지 않은 이유 : 현재 다른 페이지이므로 null 담긴 상태 == 형변환시 NullPointerException 발생 */
	Object pInteger = pageContext.getAttribute("pageInteger");
	Object pString = pageContext.getAttribute("pageString");
	Object pPerson = pageContext.getAttribute("pagePerson");
	%>
	<ul> <!-- 형변환을 하지않았기때문에 각각의 속성의 값이 존재하는지 확인 == 이동시의 page이기 때문에 "값 없음" 출력 -->
		<li>Integer 객체 : <%= (pInteger == null) ? "값 없음" : pInteger %></li>
		<li>String 객체 : <%= (pString == null) ? "값 없음" : pString %></li>
		<li>Person 객체 : <%= (pPerson == null) ? "값 없음" : ((Person)pPerson).getName()%></li>
	</ul>
</body>
</html>