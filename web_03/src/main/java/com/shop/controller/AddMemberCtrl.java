package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.MemberVO;
import com.shop.model.MemberDAO;


@WebServlet("/AddMemberCtrl")
public class AddMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddMemberCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setUserid(userid);
		vo.setUserpw(userpw);
		vo.setEmail(email);
		vo.setTel(tel);
		vo.setAddress(address);
		vo.setBirth(birth);
		int cnt = dao.addMember(vo);
		if(cnt>0) {  
			response.sendRedirect("./member/login.jsp");
		} else { 
			response.sendRedirect("./member/join.jsp");
		}	
	}
}