<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.lang.*" %>
    <%@ page import="java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더 정보 출력</title>
</head>
<body>
<%
	Enumeration e =request.getHeaderNames();
	while(e.hasMoreElements()){
		String names = (String) e.nextElement();
		String values = request.getHeader(names);
		out.println(names + " : " + values + "<br>");
	}
	
	out.println("<h3>접속 ip 주소 : "+request.getLocalAddr()+"<h3>");
	InetAddress ipaddr =InetAddress.getLocalHost();
	out.println("<h3>접속 ip 주소2: "+ipaddr+"</h3>");
%>
</body>
</html>