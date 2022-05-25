<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.Student" %>
    <%
    	Student st1= (Student)request.getAttribute("student");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>student to jsp</title>
</head>
<body>
	번호:<%=st1.getNo() %>
	이름:<%=st1.getName() %>
	국어:<%=st1.getKor() %>
	영어:<%=st1.getEng() %>
	수학:<%=st1.getMat() %>
</body>
</html>