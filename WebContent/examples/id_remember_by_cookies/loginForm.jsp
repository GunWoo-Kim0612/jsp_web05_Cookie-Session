<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	String idcheck = "";
 	String userid = "";
 	String cookie = request.getHeader("Cookie");
 	
 	  if(cookie != null){
 	      Cookie cookies[] = request.getCookies();
 	      
 	      for(int i = 0; i < cookies.length; i++){
 	         if(cookies[i].getName().equals("c_check")){
 	        	 idcheck = cookies[i].getValue();
 	         }
 	         if( cookies[i].getName().equals("c_userid")){
 	        	 userid=cookies[i].getValue();
 	         }
 	      }
 	   }
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form method="post" action="testLogin.jsp" >




<br>

	<label for="userid">아이디 : </label>
	<!-- idcheck의 값에 대한 조건식을 따로 만들지말고 3항연산자로 간결하게 해결합시다... -->
	<input id="userid"  type="text" name="userid" value="<%= idcheck != "" ? userid : ""%>"><br><br>
	<label for="userpwd">패스워드 : </label>
	<input id="userpwd"  type="password" name="userpwd"><br><br>
	
	
	<input type="checkbox"	name="idcheck"  <%= idcheck != "" ? "checked" : ""%>>아이디저장<br>
	<input type="submit" value="submit"><br>
</form>




</body>
</html>