package utils;

import javax.servlet.jsp.JspWriter;

public class JSFunction {
	//알림창을 띄운 후 매개변수로 받은 url로 이동, JspWriter를 사용해서 클라이언트에게 전달
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			String script = "<script>"
					+ "	alert('"+ msg + "');"
					+ "	location.href='" + url + "';"
					+ "</script>";
			out.println(script); //자바 코드를 out객체 사용해서 출력
		}
		catch(Exception e) {}
	}
	
	//알림창을 띄운 후 이전 페이지로 돌아감
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script = ""
					+ "<script>"
					+ "	alert('" + msg + "');"
					+ " history.back();"
					+ "</script>";
			out.println(script);
		} catch (Exception e) {}
	}
}
