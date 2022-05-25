<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>while문연습</title>
<link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css
">
<style>
* {margin: 0; padding:0;}
.dan {list-style:none; float:left; width:120px;}
.dan li{text-align:center;}
</style>
</head>
<body>
<div class="panel-heading">
	<h2>for문 연습</h2>
	<h3>while문을 이용한 구구단 출력연습</h3>
</div>
<!-- 스크립트릿+out -->
<div class="panel-body">
<%
 	int i=1;
	int dan=2;
	while (dan<10){
		out.println("<ul class='dan'>");
		out.println("<h4>"+dan+"</h4>");
		i=1;
		while(i<10){
			out.println("<li>"+dan+"*"+i+"="+(dan*i)+"</li>");
			i++;
		}
		out.println("<ul");
		dan=dan+1;
	}
%>

</div>

<div class="panel-body">

</div>
</body>
</html>