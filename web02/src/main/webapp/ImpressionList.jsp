<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.incheon.model.ImpressionVO" %>
<%
	//보내진 ImpressionList 객체를 받아 Impression로 분리하여 출력
	ArrayList<ImpressionVO> ImpressionList = (ArrayList<ImpressionVO>) request.getAttribute("ImpressionList");
	//ImpressionVO cus = (ImpressionVO) request.getAttribute("ImpressionList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용후기 목록</title>
<style>
.tb1 { display:table; width:900px; margin:20px auto; border-collapse: collapse; }
.tb1 tr { display:table-row; }
.tb1 th, .tb1 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; }
.tb1 th { border-top:1px solid #333; background-color:#ccc; }
</style>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<table class="tb1">
	<thead>
		<tr><th>번호</th><th>장소명</th><th>시작일</th><th>종료일</th><th>작성자</th><th>비밀번호</th><th>작성일</th><th>조회수</th></tr>
	</thead>
	<tbody>
<%
	for(int i=0;i<ImpressionList.size();i++){
		ImpressionVO ip = ImpressionList.get(i);
%>
		<tr>
		<td><%=ip.getItitle() %></td>
		<td><a href="/web02/GetImpressionCtrl?ino=<%=ip.getIplace() %>"></td>
		<td><%=ip.getItodate() %></td>
		<td><%=ip.getIfromdate() %></td>
		<td><%=ip.getIcontent()%></td>
		<td><%=ip.getIpic1()%></td>
		<td><%=ip.getIpic2() %></td>
		<td><%=ip.getCid() %></td>
		<td><%=ip.getIpw() %></td>
		<td><%=ip.getViewcnt() %></td>
		
		</tr>
<%
	}
%>
	</tbody>
</table>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>