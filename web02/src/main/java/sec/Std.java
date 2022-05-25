package sec;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Std
 */
@WebServlet("/Std")
public class Std extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Std() {
        super();

    }


//	public void init(ServletConfig config) throws ServletException {
//		
//	}
//
//	public void destroy() {
//		
//	}

//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	response.getWriter().append("Served at: ").append(request.getContextPath());
//	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
//		PrintWriter out = response.getWriter();
		
		String name =request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		String res;
		if(age>=19) {
			res="성년";
			
		}else {
			res="미성년";
		}
		
//		("당신의이름은"+name+"이며,나이는"+age+"세 이고,"+res+"입니다.");
		
	}

}
