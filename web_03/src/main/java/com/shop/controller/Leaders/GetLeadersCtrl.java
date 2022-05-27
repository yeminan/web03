package com.shop.controller.Leaders;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.LeadersVO;
import com.shop.model.LeadersDAO;

@WebServlet("/GetLeadersCtrl")
public class GetLeadersCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetLeadersCtrl() {
        super();   
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int lcode = Integer.parseInt(request.getParameter("lcode"));
		LeadersDAO le = new LeadersDAO();
		LeadersVO leaders = new LeadersVO();
		leaders = le.getLeaders(lcode);
		if(leaders != null) {
			request.setAttribute("leaders", leaders);
			RequestDispatcher view = request.getRequestDispatcher("./leaders/getLeaders.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetLeadersListCtrl");
		}
	}
}