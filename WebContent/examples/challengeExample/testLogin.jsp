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
		String id="gwk0624333";
		String pw="1234";
		String name="김건우";
		
		if( id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))){
			//쿠키 객체생성
			Cookie cookie = new Cookie("username", name);
			//속성 부여
			cookie.setMaxAge(60*10);
			//클라이언트에 쿠키 전송
			response.addCookie(cookie);
			
		%>
			<h2>로그인 성공</h2>
			<p> <a href="main.jsp"> 입장 </a></p>
		<%
			
		}else {
		%>	
			<h2>로그인 실패</h2>	
			<p> <a href="loginForm.jsp"> 되돌아가기 </a>
		<%
		}
		%>	
</body>
</html>