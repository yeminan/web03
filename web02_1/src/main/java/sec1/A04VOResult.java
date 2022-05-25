package sec1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.PersonVO;




@WebServlet("/A04VOResult")
public class A04VOResult extends HttpServlet {
	private static final long serialVersionUID = 1L;       
	private ServletContext ctx= null;
    public A04VOResult() {
        super();

    }

	
	public void init(ServletConfig config) throws ServletException {
	
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		PersonVO minhwan =(PersonVO) ctx.getAttribute("minhwan");
		String nick =(String) ctx.getAttribute("nick");
		int year = (int) ctx.getAttribute("year");
		
		out.println("<h1>이름 : "+minhwan.getName()+"</h1>");
		out.println("<h1>나이 : "+minhwan.getAge()+"</h1>");
		out.println("<h1>주소 : "+minhwan.getAddress()+"</h1>");
		out.println("<h1>지능 : "+minhwan.getIq()+"</h1>");
		out.println("<h1>현재년도 : "+year+"</h1>");
		out.println("<h1>별명 : "+nick+"</h1>");
		
	}

}
