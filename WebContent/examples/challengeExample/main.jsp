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
		//Cookie에서 name과 value를 받아와 비교
		Cookie cookies[] = null;
		cookies = request.getCookies();

		if (cookies != null) {
			if (cookies[0].getName().equals("username")) {
				String username = cookies[0].getValue();
	%>
	<%=username%>님 안녕하세요!
	<br> 즐거운...
	<br>
	<form method="post" action="logout.jsp">
	<input type="submit" value="로그아웃">
	</form>
	<%
		} else {
	%>
		<h2>로그인 실패</h2>	
		<p><a href="loginForm"> 되돌아가기 </a> </p>
	<%
		}
	%>


	<%
		}
	%>
</body>
</html>