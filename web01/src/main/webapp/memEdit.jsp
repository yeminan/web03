<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int cnt = 0;
	String msg = "";
			try{
			Class.forName("org.mariadb.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
			String sql="update member set pw=?, phone=?,address=? where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,upw);
			pstmt.setString(2,phone);
			pstmt.setString(3,address);
			pstmt.setString(4,uid);
			cnt = pstmt.executeUpdate();
			response.setCharacterEncoding("UTF-8");
			if(cnt>=1){//성공적으로 변경이 이루어 졌을 경우
				msg = "sucess~!";
				response.sendRedirect("index.jsp?msg="+msg);
				/* response.sendRedirect("index.jsp? msg="+msg); */
			}else{
				msg ="failure~!";
			}	response.sendRedirect("mypage.jsp?msg="+msg);
			
		}catch(Exception e){
			e.printStackTrace();
			
		}finally{
			try{
				pstmt.close();
				conn.close();
				rs.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
%>