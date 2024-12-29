<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
	<% 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id"); /* 전송되는 값이 하나일 경우  */
	String sex = request.getParameter("sex");
	String[] favo = request.getParameterValues("favo"); /* checkbox일 경우 답이 여러개일 수 있음 -> String 배열을 반환 */
	String favoStr = "";
	if (favo != null) { /* for문 사용, String 배열(favo)을 하나의 문자열(favoStr)로 */
		for (int i = 0; i < favo.length; i++) {
			favoStr += favo[i] + " ";
		}
	}
	String intro = request.getParameter("intro").replace("\r\n", "<br/>"); /* textarea 태그, enter(\r\n) 키를 br로 바꿔야 줄바꿈 됨 */
	%>
	<ul>
		<li>아이디 : <%= id %></li>
		<li>성별 : <%= sex %></li>
		<li>관심사항 : <%= favoStr %></li>
		<li>자기소개 : <%= intro %></li>
	</ul>
</body>
</html>