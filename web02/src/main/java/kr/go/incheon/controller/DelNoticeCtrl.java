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

	/**
	 * Servlet implementation class DelNoticeCtrl
	 */
	@WebServlet("/DelNoticeCtrl")
	public class DelNoticeCtrl extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    public DelNoticeCtrl() {
	        super();
	    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			int nno = Integer.parseInt(request.getParameter("nno"));
			int cnt = 0;
			Connection conn = null;
			PreparedStatement pstmt = null;
			String sql = "";
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
				sql = "delete from notice where nno=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, nno);
				cnt = pstmt.executeUpdate();
				if(cnt == 0) {
					response.sendRedirect("GetNoticeCtrl?nno="+nno);
				} else {
					response.sendRedirect("GetNoticeListCtrl");
				}
			} catch(Exception e) {
				System.out.println("요청한 delete SQL 문장을 처리하지 못함");
				response.sendRedirect("e404.jsp");
				e.printStackTrace();
			} finally {
				try {
					pstmt.close();
					conn.close();
				} catch(Exception e) {
					System.out.println("DB 닫기 실패");
					e.printStackTrace();
				}
			}
		}
	}

