package com.shop.controller.basket;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.LeadersVO;
import com.shop.model.LeadersDAO;

@WebServlet("/EditBasketCtrl")
public class EditBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditBasketCtrl() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int lcode=Integer.parseInt(request.getParameter("lcode"));
		int lmount= Integer.parseInt(request.getParameter("lmount"));
		
		LeadersVO vo= new LeadersVO();
		vo.setLcode(lcode);
		vo.setLamount(lmount);
		
		LeadersDAO le= new LeadersDAO();
		
		int cnt= le.addLeadersVO(vo);
		if(cnt>0){
			response.sendRedirect("GetLeadersListCtrl");
		}else {
			response.sendRedirect("GetLeadersCtrl? lcode="+lcode);
		}
	}

}


