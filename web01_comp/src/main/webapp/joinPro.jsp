<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%
request.setCharacterEncoding("UTF-8");
String uid = request.getParameter("uid");
String upw = request.getParameter("upw");
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String address = request.getParameter("address");

Connection conn = null;
PreparedStatement pstmt = null;
int cnt = 0;
try {
	Class.forName("org.mariadb.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
	String sql = "insert into member(id, pw, name, phone, address) values(?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, uid);
	pstmt.setString(2, upw);
	pstmt.setString(3, name);
	pstmt.setString(4, phone);
	pstmt.setString(5, address);
	cnt = pstmt.executeUpdate();
	if(cnt>0){
		response.sendRedirect("login.jsp");
	} else {
		response.sendRedirect("join.jsp");
	}
} catch(Exception e){
	e.printStackTrace();	
} finally {
	try {
		pstmt.close();
		conn.close();
	} catch(Exception e){
		e.printStackTrace();
	}
}
%>