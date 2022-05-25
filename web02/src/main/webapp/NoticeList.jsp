<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.incheon.model.NoticeVO" %>
<%
	//보내진 ImpressionList 객체를 받아 Impression로 분리하여 출력
	ArrayList<NoticeVO> NoticeList = (ArrayList<NoticeVO>) request.getAttribute("NoticeList");
	//ImpressionVO cus = (ImpressionVO) request.getAttribute("ImpressionList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항</title>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<table class="tb1">
	<thead>
		<tr><th>제목</th><th>내용</th><th>고객</th><th>작성일</th><th>작성자</th><th>조회수</th></tr>
	</thead>
	<tbody>
<%
	for(int i=0;i<NoticeList.size();i++){
		NoticeVO nt = NoticeList.get(i);
%>
		<tr>
		<td><%=nt.getNtitle() %></td>
		<td><%=nt.getNcontent() %></td>
		<td><%=nt.getNpic() %></td>
		<td><%=nt.getNname() %></td>
		<td><%=nt.getResdate() %></td>
		<td><%=nt.getViewcnt() %></td>
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