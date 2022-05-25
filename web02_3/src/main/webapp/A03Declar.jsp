<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! //선언문
		public int cnt= 1;
		public String name="kitae";
		
		public int onAdd(int x, int y){
			return x+y;
		}
	%>
	<%//스크립트릿
	int a = 20, b = 30;
	out.println("<div>"+a+"+"+b+"="+onAdd(a,b)+"(</div>");
	%>
	<div> 50+80=<%=onAdd(50,80) %></div>
	<%
	out.println("name:"+name);
	String name=request.getParameter("name"); //지역변수
	if(name.equals("taeki")){
		cnt = 100;
		a= 200;
	}
	%>
	
	<div><%=cnt%> && <%=a%></div>
<%
	String path= application.getRealPath("A03Declar.jsp");
	out.println(path);
%>
</body>
</html>