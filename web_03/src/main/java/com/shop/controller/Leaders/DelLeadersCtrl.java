package com.shop.controller.Leaders;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.LeadersDAO;


@WebServlet("/DeleteLeadersCtrl")
public class DelLeadersCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DelLeadersCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int lcode = Integer.parseInt(request.getParameter("lcode")); 
		LeadersDAO li = new LeadersDAO();		
		int cnt = li.delLeaders(lcode); 
		if(cnt>0) { 
			response.sendRedirect("GetLeadersListCtrl");
		} else { 
			response.sendRedirect("GetLeadersCtrl?lcdoe="+lcode);
		}	
	}
}
		
