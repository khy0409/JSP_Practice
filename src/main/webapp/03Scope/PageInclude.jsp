<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* page 영역의 속성 불러와서 변수에 저장, 같은 page 내의 스크립틀릿은 변수를 다르게 하지 않으면 충돌 발생 */
int pInteger2 =(Integer)(pageContext.getAttribute("pageInteger"));
//String pString2 = pageContext.getAttribute("pageString").toString();
Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
	<li>Integer 객체 : <%= pInteger2 %></li>
	<li>String 객체 : <%= pageContext.getAttribute("pageString") %></li>
	<!-- 저장한 객체가 문자열이나 래퍼 클래스(기본 타입(char, int)을 객체로 다루기 위해서 사용하는 클래스)일 때는 형변환 없이 출력가능 -->
	<li>Person 객체 : <%= pPerson2.getName() %>, <%=pPerson2.getAge() %></li>
</ul>