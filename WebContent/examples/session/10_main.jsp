<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>
alert("들어옴?")
</script>

<%
	if(session.getAttribute("loginUser") == null){
		out.print(session.getAttribute("loginUser"));
		/* response.sendRedirect("index.jsp"); */
	}else{
%>	
	<%= session.getAttribute("loginUser") %> 님 로그인 되었습니다.
	<form method="post" action="10_logout.jsp">
		<input type="submit" value="logout">
	</form>	

<%
	}
%>
		
</body>
</html>