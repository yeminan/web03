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

import kr.go.incheon.model.ImpressionVO;

@WebServlet("/GetImpressionCtrl")
public class GetImpressionCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetImpressionCtrl() {
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
				sql ="select * from Impression where cid=?";
				pstmt = conn.prepareStatement(sql);
				rs= pstmt.executeQuery();
				ArrayList<ImpressionVO> ImpressionList = new ArrayList<ImpressionVO>();
				ImpressionVO ip = new ImpressionVO();
				if(rs.next()) {
					ip.setIno(rs.getInt("ino"));
					ip.setItitle(rs.getString("ititle"));
					ip.setIplace(rs.getString("iplace"));
					ip.setItodate(rs.getDate("itodate"));
					ip.setIfromdate(rs.getDate("ifromdate"));
					ip.setIcontent(rs.getString("icontent"));
					ip.setIpic1(rs.getString("ipic1"));
					ip.setIpic2(rs.getString("ipic2"));
					ip.setCid(rs.getString("cid"));
					ip.setIpw(rs.getString("ipw"));
					ip.setIdate(rs.getDate("idate"));
					ip.setViewcnt(rs.getInt("viewcnt"));
				}
				request.setAttribute("ImpressionList", ImpressionList);
				RequestDispatcher view=request.getRequestDispatcher("impression.jsp");
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
	


