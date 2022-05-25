package service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditUserCtrl")
public class EditUserCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditUserCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cid = request.getParameter("cid");
		String upw = request.getParameter("upw");
		String uname = request.getParameter("uname");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "update customer set upw=?, uname=?, tel=?, email=?, birth=? where cid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, upw);
			pstmt.setString(2, uname);
			pstmt.setString(3, tel);
			pstmt.setString(4, email);
			pstmt.setString(5, birth);
			pstmt.setString(6, cid);
			cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				response.sendRedirect("GetUserCtrl");
			} else {
				response.sendRedirect("GetMypageCtrl");
			}
		} catch(Exception e) {
			System.out.println("요청한 update SQL 문장을 처리하지 못함");
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