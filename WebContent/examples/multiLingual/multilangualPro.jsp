<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//쿠키 생성
	Cookie cookie = new Cookie("language",request.getParameter("language"));
	cookie.setMaxAge(60*10);
	//addCookie해야 클라쪽으로 넘어감 (response)
	response.addCookie(cookie);
	
	//<script>loaction.href="multilingual.jsp" </script>
	response.sendRedirect("multilingual.jsp");
%>
