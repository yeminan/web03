<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    String name =request.getParameter("name");
    int kor = Integer.parseInt(request.getParameter("kor"));
    int eng = Integer.parseInt(request.getParameter("kor"));
    int tot;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p> <%= name %></p>
	<p> 국어 <%= kor %></p>
	<p>영어 <%= eng %></p>
	<p>총점 <%=tot=kor+eng %></p>
	<p>총점 <%=tot %></p>
	<%
		application.setAttribute("tot",tot);
		String pass="불합격";
		if(tot>=140){
			pass="불합격";
		}
		application.setAttribute("pass", pass);
	%>
	<p><a href="A06Average.jsp?tot=<%=tot %>">평균구하기</a></p>
	<p><a href="A06hakjum.jsp">학점구하기</a></p>
	<p><a href="A06Pass.jsp">합격 여부</a></p>
</body>
</html>