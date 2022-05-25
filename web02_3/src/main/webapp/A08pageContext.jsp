<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    pageContext.setAttribute("name", "이민환");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext + include</title>
</head>
<body>

<h3> pageContext + include</h3>
<%@ include file="A08include.jsp" %> <!-- 페이지의 내용을 가지고 오는 것 -->
<jsp:include page="A08include.jsp"></jsp:include><!-- 페이지의 결과만 가져오는것 -->
</body>
</html>