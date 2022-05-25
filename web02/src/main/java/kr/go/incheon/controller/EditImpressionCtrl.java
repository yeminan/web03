package kr.go.incheon.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.incheon.model.ImpressionVO;

@WebServlet("/EditImpressionCtrl")
public class EditImpressionCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditImpressionCtrl() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int ino= Integer.parseInt(request.getParameter("ino"));
		String ititle= request.getParameter("ititle");
		String iplace= request.getParameter("iplace");
		String itodate= request.getParameter("itodate");
		String ifromdate= request.getParameter("ifromdate");
		String cid= request.getParameter("cid");
		String ipw= request.getParameter("ipw");
		String idate= request.getParameter("idate");
		int cnt= 0;
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			sql="update impression set ititle=?, iplace=?, itodate=?,ifromdate=?,cid=?,ipw=?,idate=? where ino=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, ititle);
			pstmt.setString(2, iplace);
			pstmt.setString(3,itodate);
			pstmt.setString(4,ifromdate);
			pstmt.setString(5,cid);
			pstmt.setString(6,ipw);
			pstmt.setInt(7,ino);
			cnt = pstmt.executeUpdate();
			if(cnt==0) {
				response.sendRedirect("GetImpressionCtrl?cid="+ino);
			}else {
				response.sendRedirect("GetImpressionListCtrl");
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
