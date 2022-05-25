package com.company.common;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;


@WebServlet("/LogFilter")
public class LogFilter implements Filter {

	
	public void destroy() { System.out.println("접속종료");}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
		String ipAddress =request.getRemoteAddr();
		System.out.println("IP : "+ipAddress+",Time : "+(new Date().toString()));
		chain.doFilter(request, response);
	}
	public void init(ServletConfig config) throws ServletException {
	System.out.println("접속시작");	
	}
}
