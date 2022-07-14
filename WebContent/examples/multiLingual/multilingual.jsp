<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String language = "korean";
   String cookie = request.getHeader("Cookie");    
   
   if(cookie != null){
      Cookie cookies[] = request.getCookies();
      
      for(int i = 0; i < cookies.length; i++){
         if(cookies[i].getName().equals("language")){
            language = cookies[i].getValue();
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
   <% if(language.equals("korean")){%>
      <h2>안녕하세요</h2>
   <%}else if(language.equals("english")){ %>
      <h2>hello</h2>
   <%}else{
	%>    <h2>일본어</h2>
   <%
   }
   %>
   
   <form method="post" action="multilangualPro.jsp">
      <div>
         <input type="radio" name="language" value="korean" <%if(language.equals("korean")){%>checked<%}%>> 한국어 페이지 보기
         <input type="radio" name="language" value="english" <%if(language.equals("english")){%>checked<%}%>> 영어 페이지 보기
         <input type="radio" name="language" value="jap" <%if(language.equals("jap")){%>checked<%}%>> 일어 페이지 보기
      </div>
      <div>
         <input type="submit" value="설정">
      </div>
   </form>
</body>
</html>