package kr.go.incheon.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/EditCustomerCtrl")
public class EditCustomerCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditCustomerCtrl() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cid= request.getParameter("cid");
		String name= request.getParameter("name");
		String pw= request.getParameter("pw");
		String phone= request.getParameter("phone");
		String birth= request.getParameter("birth");
		String regdate= request.getParameter("regdate");
		String visited= request.getParameter("visited");
		String address= request.getParameter("address");
		int cnt= 0;
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			sql="update customer set name=?, pw=?, phone=?,birth=?,regdate=?,visited=?,address=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3,phone);
			pstmt.setString(4,birth);
			pstmt.setString(5,regdate);
			pstmt.setString(6,visited);
			pstmt.setString(7,address);
			cnt = pstmt.executeUpdate();
			if(cnt==0) {
				response.sendRedirect("GetCustomerCtrl?cid="+cid);
			}else {
				response.sendRedirect("GetCustomerListCtrl");
			}
		}catch(Exception e){
			System.out.println("요청한 update SQL 문장을 처리하지 못함");
			response.sendRedirect("e404.jsp");
			e.printStackTrace();
		}finally{
			
		}try {
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			System.out.println("DB 단기 실패 ");
			e.printStackTrace();
			
		}
		
	}

}
