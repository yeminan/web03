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


@WebServlet("/GetCustomerListCtrl")
public class GetCustomerListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public GetCustomerListCtrl() {
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
			sql = "select * from customer";
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			ArrayList<CustomerVO> customerList = new ArrayList<CustomerVO>();
			while(rs.next()) {
				CustomerVO cus = new CustomerVO();
				cus.setCid(rs.getString("cid"));
				cus.setName(rs.getString("name"));
				cus.setPw(rs.getString("pw"));
				cus.setPhone(rs.getString("phone"));
				cus.setBirth(rs.getString("birth"));
				cus.setRegdate(rs.getString("regdate"));
				cus.setVisited(rs.getString("visited"));
				cus.setAddress(rs.getString("address"));
				customerList.add(cus);
			}
			request.setAttribute("customerList", customerList);
			RequestDispatcher view=request.getRequestDispatcher("CustomerList.jsp");
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
