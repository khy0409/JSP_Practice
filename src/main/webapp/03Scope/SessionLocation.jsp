<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 페이지 영역</title>
<!-- 웹 브라우저를 닫았다가 이 페이지를 다시 열면, 에러 == 브라우저를 닫았을때 session이 삭제 -->
</head>
<body>
	<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
	<% /* 읽어온 속성을 ArrayList로 형변환(읽어온 List가 String이 아닐 경우에 대한 warning 표시) */
	ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
	for (String str : lists) /* for문으로 lists 전체 출력, str이라는 String에 lists의 값을 하나씩 넣어서 출력 */
		out.print(str + "<br/>");
	%>
</body>
</html>