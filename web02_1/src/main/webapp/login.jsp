<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="biz.PersonVO" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<h2>로그인</h2>
<form action="A05Session" method="post" name="login_form" novalidate>
	<hr>
	<label for="id">아이디 : </label><input type="text" name="id" id="id" size="40" maxlength="20"/><br>
	<hr>
	<label for="id">비밀번호 : </label><input type="password" name="pw" id="pw" size="40" maxlength="20"/><br>
	<hr>
	<input type="submit" value="로그인"> &nbsp; &nbsp; &nbsp; &nbsp;
	<input type="reset" value="취소"> &nbsp; &nbsp; &nbsp; &nbsp;
</form>
<%
	String id = (String) session.getAttribute("id");
	String name = (String)session.getAttribute("name");
	String msg = "";
	
	if(name == null) {
		out.println("<p>로그인을 하지 않으셨습니다.</p>");
		
	} else {
		msg = (String) application.getAttribute("msg");
		PersonVO vo= (PersonVO) application.getAttribute("person");
		out.println("<p>메시지"+msg+"</p><br>");
		out.println("<p>안녕하세요~! "+name+"님</p><br>");
		out.println("<p>안녕하세요~! "+vo.getName()+"님</p><br>");
		out.println("<a href='A06Logout'>로그아웃</a>");
	}
%>
</body>
</html>