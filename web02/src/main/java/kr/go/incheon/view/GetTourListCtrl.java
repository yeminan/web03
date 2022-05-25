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

import kr.go.incheon.model.TourlistVO;


@WebServlet("/GetTourListCtrl")
public class GetTourListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public GetTourListCtrl() {
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
			sql = "select * from tourlist";
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			ArrayList<TourlistVO> TourList = new ArrayList<TourlistVO>();
			while(rs.next()) {
				TourlistVO vo = new TourlistVO();
				vo.setPid(rs.getString("pid"));
				vo.setPno(rs.getInt("pno"));
				vo.setPname(rs.getString("pname"));
				vo.setPtype(rs.getString("ptype"));
				vo.setPcoment(rs.getString("pcoment"));
				vo.setPimg1(rs.getString("pimg1"));
				vo.setPimg2(rs.getString("pimg2"));
				vo.setPimg3(rs.getString("pimg3"));
				vo.setPimg4(rs.getString("pimg4"));
				TourList.add(vo);
			}
			request.setAttribute("TourList", TourList);
			RequestDispatcher view=request.getRequestDispatcher("TourList.jsp");
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


