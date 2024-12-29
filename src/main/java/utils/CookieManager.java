package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {

	//새로운 쿠키 생성
	public static void makeCookie(HttpServletResponse response, String cName, String cValue, int cTime) {
		Cookie cookie = new Cookie(cName, cValue);
		cookie.setPath("/");
		cookie.setMaxAge(cTime);
		response.addCookie(cookie);
	}
	
	//cName의 쿠키를 찾아 값 반환
	public static String readCookie(HttpServletRequest request, String cName) {
		String cookieValue = ""; //반환할 값(String)
		
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c: cookies) {
				String cookieName = c.getName();
				if (cookieName.equals(cName)) {
					cookieValue = c.getValue(); //반환할 값 갱신
				}
			}
		}
		return cookieValue;
	}
	
	//cName이라는 이름의 쿠키 삭제(쿠키는 따로 remove가 없음 == make 쿠키로 해당 이름의 쿠키를 전부 0으로 설정해야함)
	public static void deleteCookie(HttpServletResponse response, String cName) {
		makeCookie(response, cName, "", 0);
	}
}
