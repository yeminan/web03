package com.shop.controller.Leaders;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetLeadersCtrl")
public class GetLeadersCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetLeadersCtrl() {
        super();   
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
