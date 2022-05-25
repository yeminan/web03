package com.company.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;


@WebServlet("/filterTest")
public class FilterTest implements Filter {

    public FilterTest() {  }

	public void init(ServletConfig config) throws ServletException {	}

	public void destroy() {	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
		System.out.println("1, Filter Test IN");
		chain.doFilter(request,response);
		System.out.println("2, Filter Test Out");
	}

}
