<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% /* pageContext 객체 사용해 page영역에 속성 저장 */
pageContext.setAttribute("pageInteger", 1000);  /* pageInteger라는 이름에 1000이라는 값 저장 */
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 영역</title>
</head>
<body>
	<h2>page 영역의 속성값 읽기</h2>
	<% /* 저장한 속성 다시 읽어오기(object 타입으로 저장되기 때문에 형변환 필요) */
	int pInteger = (Integer)(pageContext.getAttribute("pageInteger")); /* pageInteger라는 이름의 속성 읽어와서 int로 변환 */
	String pString = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
	%>
	<ul>
	<li>Integer 객체 : <%= pInteger %></li>
	<li>String 객체 : <%= pString %></li>
	<li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>	<!-- person은 dto(private)이기때문에 getter 메서드 사용 -->
	</ul>
	
	<h2>include된 파일에서 page 영역 읽어오기</h2>
	<%@ include file="PageInclude.jsp" %> 
	<!-- include된 파일은 현재 페이지에 PageInclude.jsp를 포함한 것 == 같은 페이지로 인식 == page 속성 사용가능-->
	
	<h2>페이지 이동 후 page 영역 읽어오기</h2>
	<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a> 
	<!-- a태그로 감싼 링크는 다른 페이지로 이동하는 것 == 다른 페이지로 인식 == page 속성 사용불가-->
</body>
</html>