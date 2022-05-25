<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.incheon.model.TourlistVO" %>
<%
	//보내진 ImpressionList 객체를 받아 Impression로 분리하여 출력
	ArrayList<TourlistVO> Tourlist = (ArrayList<TourlistVO>) request.getAttribute("Tourlist");
	//ImpressionVO cus = (ImpressionVO) request.getAttribute("ImpressionList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
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
		<tr><th></th><th>비밀번호</th><th>고객명</th><th>연락처</th><th>이메일</th><th>생년월일</th><th>가입일</th></tr>
	</thead>
	<tbody>
<%
	for(int i=0;i<Tourlist.size();i++){
		TourlistVO vo = Tourlist.get(i);
%>
		<tr>
		<td><%=vo.getPid() %></td>
		<td><%=vo.getPno() %></td>
		<td><%=vo.getPname()%></td>
		<td><%=vo.getPtype() %></td>
		<td><%=vo.getPcoment() %></td>
		<td><%=vo.getPimg1() %></td>
		<td><%=vo.getPimg2() %></td>
		<td><%=vo.getPimg3() %></td>
		<td><%=vo.getPimg4() %></td>
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