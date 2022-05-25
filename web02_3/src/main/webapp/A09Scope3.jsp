<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>스코프결과2</h2>
<div>


		<p> 현재페이지 속성 <%=pageContext.getAttribute("name" )%></p>
    	<p>요청한 페이지속성 <%=request.getAttribute("request")%></p>
    	<p>현재 세션이 속성 <%=session.getAttribute("session")%></p>
    	<p>현재 애플리케이션 속성 <%=application.getAttribute("application")%></p>>
    	<p>전역 변수의 속성 <%=application.getInitParameter("name") %>
    	<p>전역 변수의 속성2 <%=application.getInitParameter("ojdbc") %>

</div>
</body>
</html>