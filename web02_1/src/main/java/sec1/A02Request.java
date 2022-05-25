package sec1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/A02Request")
public class A02Request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public A02Request() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out =response.getWriter();
		out.println("<h1>request.getSchema()=>"+request.getScheme()+"</h1>");
		out.println("<h1>request.getRomoteAddr()=>"+request.getRemoteAddr()+"</h1>");
		out.println("<h1>request.getRequestURL()=>"+request.getRequestURL()+"</h1>");
		out.println("<h1>request.getRequestURI()=>"+request.getRequestURI()+"</h1>");
		out.println("<h1>request.getServletPath()=>"+request.getServletPath()+"</h1>");
		out.println("<h1>request.getServletContext()=>"+request.getServletContext()+"</h1>");
		
		Enumeration<String> headers= request.getHeaderNames();
		while(headers.hasMoreElements()) {
			String header = headers.nextElement();
			out.println("<h1>"+header+"=>"+request.getHeader(header)+"</h1>");
		}
		out.close();
	}

}
