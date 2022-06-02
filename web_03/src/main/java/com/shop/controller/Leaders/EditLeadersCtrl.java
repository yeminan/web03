package com.shop.controller.Leaders;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.shop.common.LeadersVO;
import com.shop.model.LeadersDAO;

@WebServlet("/EditLeadersCtrl")
public class EditLeadersCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EditLeadersCtrl() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String saveFolder = "D:/LMH/jsp1/web_03/src/main/webapp/upload";
		String encType = "UTF-8";
		int maxSize = 10 * 1024 * 1024;	// 10MB
		
		MultipartRequest multi = new MultipartRequest(request,
				saveFolder, maxSize, encType);
		
		int lcode=Integer.parseInt(multi.getParameter("lcode"));
		String ltitle =multi.getParameter("ltitle");
		int lamount = Integer.parseInt(multi.getParameter("lamount"));
		int lprice =Integer.parseInt(multi.getParameter("lprice"));
		String lcategory = multi.getParameter("lcategory");
		String lcontent=multi.getParameter("lcontent");
		String limg= "";
		int ldelivery=Integer.parseInt(multi.getParameter("ldelivery"));
		try {			
			if (multi.getFilesystemName("lmg") != null) {
				String name = multi.getFilesystemName("limg");
				limg = name;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		LeadersVO vo =new LeadersVO();
		vo.setLcode(lcode);
		vo.setLtitle(ltitle);
		vo.setLamount(lamount);
		vo.setLprice(lprice);
		vo.setLcategory(lcategory);
		vo.setLcontent(lcontent);
		vo.setLimg(limg);
		vo.setLdelivery(ldelivery);
		
		LeadersDAO le=new LeadersDAO();
		
		int cnt = le.editLeadersVO(vo);
		if(cnt>0) {  
			response.sendRedirect("GetLeadersListCtrl");
		} else { 
			response.sendRedirect("./leaders/getLeaders.jsp?lcode="+lcode);
		}	
	}

}
