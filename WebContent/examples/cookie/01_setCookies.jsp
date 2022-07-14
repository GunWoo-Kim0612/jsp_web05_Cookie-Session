<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//id속성만 유효기간을 설정했기 때문에 나머지 값들은 브라우저가 종료되면 사라지게된다.
	Cookie c = new Cookie("id", "gwk1206");
	c.setMaxAge(365*24*60*60);
	response.addCookie(c);
	response.addCookie(new Cookie("pwd", "1234"));
	response.addCookie(new Cookie("age", "30"));
%>
<h3>쿠키 설정</h3>
</body>
</html>