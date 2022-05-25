<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="connectionPool.conf" %>
<%
	request.setCharacterEncoding("UTF-8");	
	int bno=Integer.parseInt(request.getParameter("bno"));
	String btitle=request.getParameter("btitle");	
	String bcontent=request.getParameter("bcontent");
	String author=request.getParameter("author");

	sql ="update board set btitle=?, bcontent=?,author=?,regdate=now() where bno=(?,?,?,?)" ;
	pstmt= conn.prepareStatement(sql);
	pstmt.setString(1,btitle);
	pstmt.setString(2,bcontent);
	pstmt.setString(3,author);
	pstmt.setInt(4,bno);
	cnt=pstmt.executeUpdate();
	if(cnt>0){
		response.sendRedirect("board1.jsp");
		
	}else{
		response.sendRedirect("boardUpdate.jsp?bno="+bno);
	}
		
%>
<%@ include file="connectClose.conf" %>
