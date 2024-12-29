<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - response</title>
</head>
<body>
<%
String id = request.getParameter("user_id"); /* 내장객체로 전송된 매개변수 얻어옴 */
String pwd = request.getParameter("user_pwd");
if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) { /* id, pwd를 must, 1234로 하드코딩 */
	response.sendRedirect("ResponseWelcom.jsp"); /* 로그인 성공시, sendRedirect에 넘긴 로그인 성공 페이지로 이동 */
}else {
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
	.forward(request, response); /* 인증 실패시, 로그인 페이지로 전달(forward), forward로 이동시 제어 흐름 줌, 쿼리스트링 통해 loginErr=1 줌 */
}
%>
</body>
</html>