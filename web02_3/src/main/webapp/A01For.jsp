<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 For문</title>
<link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css
">
</head>
<body>
<div class="panel-heading">
<h2>For 문 연습</h2>
</div>
</body>
<div class="panel-body">
<% 
	int total=0;
	for(int i=1; i<=10; i++){
		total+=i;
		out.println("<p>"+i+"</p>");
	}
	out.println("<p><strong>1부터 10까지의 합계는"+total+"입니다");
%>
<div class="panel-body">
<%
 		total=0;
		for(int i=1;i<=10;i++){
			total+=i;	
%>
<p><%=i %><p>
<%
}
%>
<p><strong>1부터10까지의 합계는<%=total %>입니다</strong>
</div>
</div>
</html>