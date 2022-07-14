<%@page import="java.util.Enumeration"%>
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
		session.setAttribute("s_name1", "첫 번째 값");
		session.setAttribute("s_name2", "두 번째 값");
		session.setAttribute("s_name3", "세 번째 값");
		
		out.print("<h3>세션값 삭제 전</h3>");
		
		Enumeration names;
		//속성이름으로 Enumeration객체 names에 설정된 모든 정보 넘김.
		names = session.getAttributeNames();
		
		while(names.hasMoreElements()) {
			String name = names.nextElement().toString();
			String value = session.getAttribute(name).toString();
			out.print(name + " : "  + value + "<br>");
		}
		
		session.removeAttribute("s_name2");
		
		out.print("<h3>세션 삭제 후</h3>");
		
		names = session.getAttributeNames();
		while(names.hasMoreElements()){
			String name = names.nextElement().toString();
			String value = session.getAttribute(name).toString();
			
			out.print(name + ": " + value + "<br>");
		}
	%>
</body>
</html>