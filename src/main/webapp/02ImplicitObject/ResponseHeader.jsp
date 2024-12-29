<%@page import="java.util.Collection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
	long add_date = s.parse(request.getParameter("add_date")).getTime(); /* 0000-00-00형식의 매개변수 값을 long으로 변환(타임스탬프) */
	int add_int = Integer.parseInt(request.getParameter("add_int")); /* 폼으로 전달되는 값은 항상 String -> int로 변환 */
	String add_str = request.getParameter("add_str");
	
	response.addDateHeader("myBirthday", add_date);
	response.addIntHeader("myNumber", add_int);
	response.addIntHeader("myNumber", 1004); /* 동일한 헤더명으로 다른 값 입력 -> add이기때문에 추가 */
	response.addHeader("myName", add_str);
	response.setHeader("myName", "안중근"); /* 동일한 헤더명으로 다른 값 입력 -> set이기때문에 수정 */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - response</title>
</head>
<body>
	<h2>응답 헤더 정보 출력하기</h2>
	<% /* myNumber가 두번 출력, 모두 8282로(setHeader()의 특성, 첫번째 값만 가져옴) */
	Collection<String> headerNames = response.getHeaderNames(); 
	for (String hName : headerNames) {
		String hValue = response.getHeader(hName);
	%>
		<li><%= hName %> : <%= hValue %></li>
	<%
	}
	%>
	<h2>myNumber만 출력하기</h2>
	<% /* 헤더명은 같지만 다른 값을 출력, add = 헤더명이 같더라도 덮어쓰지 않고 더함 */
	Collection<String> myNumber = response.getHeaders("myNumber");
	for (String myNum : myNumber) {
	%>
		<li>myNumber : <%=myNum %></li>
	<%
	}
	%>
</body>
</html>