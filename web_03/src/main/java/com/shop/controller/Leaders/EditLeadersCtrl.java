package com.shop.controller.Leaders;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.LeadersVO;
import com.shop.model.LeadersDAO;

@WebServlet("/UpdateLeadersCtrl")
public class EditLeadersCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EditLeadersCtrl() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int lcode=Integer.parseInt(request.getParameter("lcode"));
		int lmount= Integer.parseInt(request.getParameter("lmount"));
		int lprice = Integer.parseInt(request.getParameter("lprice"));
		String lcategory = request.getParameter("lcategory");
		String limg = request.getParameter("limg");
		String lcontent = request.getParameter("lcontent");
		int ldelivery = Integer.parseInt(request.getParameter("ldelivery"));
		
		
		LeadersVO vo= new LeadersVO();
		vo.setLcode(lcode);
		vo.setLamount(lmount);
		vo.setLprice(lprice);
		vo.setLcategory(lcategory);
		vo.setLimg(limg);
		vo.setLcontent(lcontent);
		vo.setLdelivery(ldelivery);
		
		LeadersDAO le= new LeadersDAO();
		int cnt= le.addLeadersVO(vo);
		if(cnt>0){
			response.sendRedirect("GetLeadersListCtrl");
		}else {
			response.sendRedirect("GetLeadersCtrl? lcode="+lcode);
		}
	}

}
