<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - application</title>
</head>
<body>
	<h2>web.xml에 설정한 내용 읽어오기</h2>
	초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %> <!-- web.xml의 초기화 매개변수 읽어옴(설정 안했다면 null) -->
	
	<h2>서버의 물리적 경로 얻어오기</h2>
	application 내장 객체 : <%= application.getRealPath("/02ImplicitObject") %> <!-- 현재 작성중인 폴더의 물리적 경로 얻어옴 -->
	
	<h2>선언부에서 application 내장 객체 사용하기</h2>
	<%!/* "02/ImplicitObject"의 물리적 경로 반환 */
	public String useImplicitObject() { /* 서블릿 컨텍스트 this로부터 얻음 */
		return this.getServletContext().getRealPath("/02ImplicitObject");
	}
	public String useImplicitObject(ServletContext app) { /* 서블릿 컨텍스트 매개변수로 얻음 */
		return app.getRealPath("/02ImplicitObject");
	}
	%>
	<ul>
		<li>this 사용 : <%= useImplicitObject() %></li>
		<li>내장 객체를 인수로 전달 : <%= useImplicitObject(application) %></li>
	</ul>
</body>
</html>