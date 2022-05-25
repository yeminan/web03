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
import javax.servlet.http.HttpSession;

import biz.PersonVO;

@WebServlet("/A05Session")
public class A05Session extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ServletContext sc =null;   
    public A05Session() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init(ServletConfig config) throws ServletException{sc= config.getServletContext(); }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String msg ="";
		
		PersonVO vo = new PersonVO();
		vo.setId(id);
		vo.setPw(pw);
		vo.setName("관리자");
		
		
		if(id.equals("admin")&& pw.equals("1234")) {
			msg= "로그인성공";
			System.out.println(msg);
			sc.setAttribute("msg",msg);
			HttpSession session = request.getSession();
			session.setAttribute("id",id);
			session.setAttribute("person",vo);
			sc.setAttribute("person",vo);
			response.sendRedirect("login.jsp");
		}else {
			msg ="로그인 실패";
			System.out.println(msg);
			sc.setAttribute("msg",msg);
			response.sendRedirect("login.jsp");
		}
		out.println("<br>");
		out.close();
	}
}
