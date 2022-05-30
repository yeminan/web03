package com.shop.controller.Leaders;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.LeadersVO;
import com.shop.model.LeadersDAO;

@WebServlet("/GetLeadersListCtrl")
public class GetLeadersListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GetLeadersListCtrl() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		LeadersDAO le= new LeadersDAO();
		ArrayList<LeadersVO> list = le.getLeadersList();
		request.setAttribute("list",list);
		RequestDispatcher view=request.getRequestDispatcher("./leaders/getLeadersList.jsp");
		view.forward(request, response);
		
	}

}
