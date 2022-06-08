<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="b" scope="request" class="com.example.Human"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>국가 : <%=b.getCountry() %></li>
	<li>이름 : <%=b.getName() %></li>
	<li>나이 : <%=b.getAge() %></li>
	<li>취미 : <%=b.getHobby() %></li>
</ul>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>