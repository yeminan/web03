package sec1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.PersonVO;


@WebServlet("/A03VOcontext")
public class A03VOcontext extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext ctx= null;
  
    public A03VOcontext() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		//VO의 데이터전달
		PersonVO minhwan=new PersonVO();
		minhwan.setName("이민환");
		minhwan.setAddress("일산");
		minhwan.setAge(26);
		minhwan.setIq(100);
		
		ctx.setAttribute("minhwan",minhwan );
		ctx.setAttribute("year", 2022);
		ctx.setAttribute("nick", "아무개");
		PrintWriter out = response.getWriter();
		out.print("<a href= 'A04VOResult'>결과 서블릿으로 이동</a>");
		out.close();
	}

}
