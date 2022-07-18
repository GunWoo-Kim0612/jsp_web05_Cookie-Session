<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!-- WEB-INF 에   jstl.jar 안넣었으니까 당연히 오류나지요..   -->
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%-- ${param.userid } --%>


<%
	
	String id= "gwk0624333";
	String pwd = "1234";
	//getParameter는 태그의 이름속성으로 접근
	String _id = request.getParameter("userid");
	String _pwd = request.getParameter("userpwd");
	String _check = request.getParameter("idcheck");
	
	out.println(_check);
	if(id.equals(_id) && pwd.equals(_pwd)){
		
		
		//쿠키생성...아이디   한글깨짐 방지 인코딩
		Cookie cookie = new Cookie("c_userid", URLEncoder.encode(_id,"UTF-8"));
		cookie.setMaxAge(60*60*24*365);		//쿠키 시간 설정
		response.addCookie(cookie);			//클라로 쿠키전송
			
		//쿠키생성...아이디체크			
		Cookie cookie1 = new Cookie("c_check",_check);
		cookie.setMaxAge(60*60*24*365);
		response.addCookie(cookie1);

%>		
		로그인 성공
<%
	} else{
%>
		로그인 실패
<%	
	}
%>


</body>
</html>