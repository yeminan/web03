<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스코프2 결과출력</title>
</head>
<body>

<div>
<%

		pageContext.setAttribute("name","현재" );
    	request.setAttribute("request","요청");
    	session.setAttribute("session","세션");
    	application.setAttribute("application","애플리케이션");
    	
%>
<a href="A09Scope3.jsp">03페이지로 이동</a>
</div>
</body>
</html>