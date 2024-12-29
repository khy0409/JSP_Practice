<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - out</title>
</head>
<body>
<%
out.print("출력되지 않는 텍스트"); /* beffer에 저장 */
out.clearBuffer(); /* buffer 내용 삭제 -> 11번 줄은 실행되지 않음 */

out.print("<h2>out 내장 객체<h2>");

out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br/>"); /* 현재 페이지에 설정된 버퍼의 크기(기본값 8kb) */
out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br/>"); /* 사용하고 남은 버퍼의 크기 */

out.flush(); /* 강제 플러시(원래는 버퍼가 채워진 후 플러시되며 출력함) */
out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br/>");
%>
</body>
</html>