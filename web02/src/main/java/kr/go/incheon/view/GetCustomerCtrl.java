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

import kr.go.incheon.model.CustomerVO;


@WebServlet("/GetCustomerCtrl")
public class GetCustomerCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public GetCustomerCtrl() {
        super();
       
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		String sql="";
		String cid = request.getParameter("cid");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			sql = "select * from customer where cid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cid);
			rs= pstmt.executeQuery();
			CustomerVO cus = new CustomerVO();
			if(rs.next()) {
				cus.setCid(rs.getString("cid"));
				cus.setName(rs.getString("name"));
				cus.setPw(rs.getString("pw"));
				cus.setPhone(rs.getString("phone"));
				cus.setBirth(rs.getString("birth"));
				cus.setRegdate(rs.getString("regdate"));
				cus.setVisited(rs.getString("visited"));
				cus.setAddress(rs.getString("address"));
				}
			request.setAttribute("cus", cus);
			RequestDispatcher view=request.getRequestDispatcher("Customer.jsp");
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
