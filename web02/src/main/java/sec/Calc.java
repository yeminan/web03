package sec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Calc")
public class Calc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Calc() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("시스템이이 시작되었습니다");
	}


	public void destroy() {
		System.out.println("시스템이 종료되었습니다");
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// get,post 둘다 사용가능
//	}
//	
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		// get방식으로 사용가능
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}


//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// post방식으로 사용가능
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
	
		
		int v1 = Integer.parseInt(request.getParameter("v1"));
		int v2 = Integer.parseInt(request.getParameter("v2"));
		String op_code = request.getParameter("op");
		double res= 0.00;
		switch(op_code) {
			case "+":
				res= v1+v2;
				break;
			case "-":
				res= v1-v2;
				break;
			case "*":
				res= v1*v2;
				break;
			case "/":
				if( v1 == 0 || v2 == 0) {
					out.println("0으로 나누거나 나눠질 수 없습니다.");
					return;
				}
				res= (float) v1 / v2;
				break;
				
		}
		out.println("v1 = "+v1+", v2="+v2);
		out.println(v1+op_code+v2+"="+res);
		}		
	}


