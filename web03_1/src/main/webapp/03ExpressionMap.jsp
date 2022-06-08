<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.lang.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp에서 Map+EL 사용하기</title>
</head>
<body>
<%
	String name= "Leeminhwan's JSP MAP+EL Test";
	String[] color ={"red","blue","sky"};
	
	Map map= new HashMap(); //(속성명,속성값) 2가지 저장및 전달
	map.put("name1",color[0]);
	map.put("name2",color[1]);
	map.put("name3",color[2]);
	
	request.setAttribute("name",name);
	request.setAttribute("color", color);
	request.setAttribute("map", map);
%>
<h3>${name }</h3>
<%
	for(int i=0;i<color.length;i++){		
%>
<h3><%=color[i] %></h3>
<%
	}
%>
<h3>${map }</h3>
</body>
</html>