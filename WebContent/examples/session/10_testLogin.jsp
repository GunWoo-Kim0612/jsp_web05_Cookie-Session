<%@page import="javax.websocket.SendResult"%>
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
	String id = "gwk0624333@gmail.com";
	String pw = "1234";
	String name = "김건우";
	
	if(id.equals(request.getParameter("floatingInput")) && pw.equals(request.getParameter("floatingPassword"))  ){
		session.setAttribute("loginindUser", name);
		response.sendRedirect("10_main.jsp");
	}else{
%>
	<script>
	
	alert("틀림" );
	location.href="index.jsp";

	</script>
<%		

	}
%>
</body>
</html>