<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=(String) pageContext.getAttribute("name");    	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include되는 파일</title>
</head>
<body>
	<h3>포함되어지는 파일</h3>
	<div>
<p>Name1 : <%=name %></p>
<%
	out.println("<p> Name2 : "+name+"</p>");
%>
	<p>Name3: ${name} </p>
	 
	</div>
</body>
</html>