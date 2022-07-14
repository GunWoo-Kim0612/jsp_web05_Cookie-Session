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
	c.setMaxAge(0);
	response.addCookie(c);

%>
<h3>쿠키 삭제됨</h3>
<a href="02_getCookies.jsp">삭제 확인</a>
</body>
</html>