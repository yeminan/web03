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

@WebServlet("/AddNoticeCtrl")
public class AddNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddNoticeCtrl() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int nno= Integer.parseInt(request.getParameter("nno"));
		String ntitle= request.getParameter("ntitle");
		String ncontent= request.getParameter("ncontent");
		String npic= request.getParameter("npic");
		String regdate= request.getParameter("regdate");
		String nname= request.getParameter("nname");
		int viewcnt=Integer.parseInt (request.getParameter("viewcnt"));
		int cnt= 0;
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			sql="insert into notice values(noti_seq.nextval,?,?,?,?,sysdate,?,1)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, ntitle);
			pstmt.setString(2, ncontent);
			pstmt.setString(3, npic);
			pstmt.setString(4, regdate);
			pstmt.setString(5, nname);
			pstmt.setInt(6, viewcnt);
			pstmt.setInt(7,nno);
			cnt = pstmt.executeUpdate();
			if(cnt==0) {
				response.sendRedirect("GetNoticeCtrl?nno="+nno);
			}else {
				response.sendRedirect("GetNoticeListCtrl");
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

