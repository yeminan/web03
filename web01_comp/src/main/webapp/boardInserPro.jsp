<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="connectionPool.conf" %>
<%
	request.setCharacterEncoding("UTF-8");	
	String btitle=request.getParameter("btitle");	
	String bcontent=request.getParameter("bcontent");
	String author=request.getParameter("author");

	sql ="insert into board (btitle,bcontent,author) values(?,?,?)" ;
	pstmt= conn.prepareStatement(sql);
	pstmt.setString(1,btitle);
	pstmt.setString(2,bcontent);
	pstmt.setString(3,author);
	cnt=pstmt.executeUpdate();
	if(cnt>0){
		response.sendRedirect("board1.jsp");
		
	}else{
		response.sendRedirect("boardInser.jsp");
	}
%>
<%@ include file="connectClose.conf" %>
