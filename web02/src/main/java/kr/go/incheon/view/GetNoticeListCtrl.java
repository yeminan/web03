package kr.go.incheon.view;

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

import kr.go.incheon.model.NoticeVO;
import kr.go.incheon.model.TourlistVO;


@WebServlet("/GetNoticeListCtrl")
public class GetNoticeListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetNoticeListCtrl() {
        super();
       
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		String sql="";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			sql = "select * from NoticeList";
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			ArrayList<NoticeVO> NoticeList = new ArrayList<NoticeVO>();
			while(rs.next()) {
				NoticeVO nt = new NoticeVO();
				nt.setNno(rs.getInt("nno"));
				nt.setNtitle(rs.getString("ntitle"));
				nt.setNcontent(rs.getString("ncontent"));
				nt.setNpic(rs.getString("npic"));
				nt.setResdate(rs.getDate("resdate"));
				nt.setNname(rs.getString("nname"));
				nt.setViewcnt(rs.getInt("viewcnt"));
				NoticeList.add(nt);
			}
			request.setAttribute("NoticeList", NoticeList);
			RequestDispatcher view=request.getRequestDispatcher("NoticeList.jsp");
			view.forward(request, response);
			}catch(Exception e) {
				e.printStackTrace();
				}finally {
				try {
				rs.close();
				pstmt.close();
				conn.close();
				}catch(Exception e) {
					e.printStackTrace();
			} 
		}
	}
}
