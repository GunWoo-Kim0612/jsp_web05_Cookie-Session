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
		String id = (String) session.getAttribute("id");
		String pw = (String) session.getAttribute("pw");
		Integer age = (Integer) session.getAttribute("age");
		String session_id = session.getId();
		 int inactive =  session.getMaxInactiveInterval() / 60; 
	%>
	
	<%= id %><br>
	<%= pw %><br>
	<%= age %><br>
	<%= session_id %><br>
	<%= inactive %>
</body>
</html>