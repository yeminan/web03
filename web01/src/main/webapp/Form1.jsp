<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String name= request.getParameter("name");
	String id1= request.getParameter("id1");
	String pw1= request.getParameter("pw1");
	String address=request.getParameter("address");
	int count=Integer.parseInt(request.getParameter("count"));
	String email=request.getParameter("e-mail");
	String URL1=request.getParameter("URL1");
	String date=request.getParameter("date");
	String comment1=request.getParameter("comment1");
	String soccer=request.getParameter("soccer");
	
	String[] favorite=request.getParameterValues("favorite");
	
	String victory=request.getParameter("victory");
	
	String[] playoff=request.getParameterValues("playoff");
	
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class ="panel-heading"">
		<table class="table"> </table>
		<tr>	
		<th> 이름 :</th>
		<td><%=name %></td>
		</tr>
		<tr>	
		<th> 아이디 :</th>
		<td><%=id1 %></td>
		</tr>
		<tr>	
		<th> 비밀번호 :</th>
		<td><%=pw1 %></td>
		</tr>
		<tr>	
		<th> 주소 :</th>
		<td><%=address %></td>
		</tr>
		<tr>	
		<th> 이름 :</th>
		<td><%=name %></td>
		</tr>
		<tr>	
		<th> 주문수량 :</th>
		<td><%=count %></td>
		</tr>
		<tr>	
		<th> E-mail :</th>
		<td><%=email %></td>
		</tr>
		<tr>	
		<th> URL :</th>
		<td><%=URL1 %></td>
		</tr>
		<tr>	
		<th> date :</th>
		<td><%=date %></td>
		</tr>
		<tr>	
		<th> comment :</th>
		<td><%=comment1%></td>
		</tr>
		<tr>	
		<th> soccer :</th>
		<td><%=soccer %></td>
		</tr>
		<tr>	
		<th> victory :</th>
		<td><%=victory %></td>
		</tr>
		<ul>
		<tr>
			<th>4강 진출 예상팀	</th>
		<td>
			<ul>
			<%
			for(String d : favorite) {
			%>
			<li><%=d %></li>
			<% 
			}
			%>
			</ul>
		</td>
		</tr>
		</ul>
		<tr>
			<th> 플레이오프 확정팀</th>
				<td>
					<ul>
					<%
					for(String p : playoff){
					%>	
					<li><%=p %></li>
					<%
					}
					%>
					</ul>
				</td>
		</tr>					
	</div>
</body>
</html>