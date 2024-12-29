<%@page import="common.Person"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 영역</title>
<!-- 웹 브라우저를 닫았다가 이 페이지를 다시 열어도 에러X == tomcat 서버 종료 전까지는 속성을 저장하고 있음-->
</head>
<body>
	<h2>application 영역의 속성 읽기</h2>
	<% /* application에서 받아온 값을 전부 map에 저장(형변환 필요), arrayList와 같은 이유로 warning */
	Map<String, Person> maps = (Map<String, Person>)application.getAttribute("maps");
	Set<String> keys = maps.keySet(); /* map에 담긴 데이터를 확인하기 위한 key 얻어옴 */
	for (String key : keys) { /* keys에 있는 값을 String key에 넣고 출력 */
		Person person = maps.get(key);
		out.print(String.format("이름 : %s, 나이 :%d <br/>",
				person.getName(), person.getAge()));
	}
	%>
</body>
</html>