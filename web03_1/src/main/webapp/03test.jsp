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
<title>Insert title here</title>
</head>
<body>
<%
	String id="LMH";
	String[] color={"0000","1111","2222"}; 

	Map map = new HashMap();
	map.put("color1",color[0]);
	map.put("color2",color[1]);
	map.put("color3",color[2]);
	
	request.setAttribute("id",id);
	request.setAttribute("color",color);
	request.setAttribute("map",map);
%>
<h3>${id }</h3>
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