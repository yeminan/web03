<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    	pageContext.setAttribute("name","page");//현재페이지 데이터 인지
    	request.setAttribute("name","request");//타겟 페이지에서만 데이터인지
    	session.setAttribute("name","session");//세션이 있는동안 인식
    	application.setAttribute("name","application");//애플리케이션이 동작 중이면 인식
		
    	System.out.println("A09Scope01.jsp");
    	System.out.println("페이지컨텍스트의 속성 : "+pageContext.getAttribute("name"));
    	System.out.println("요청페이지의 속성 : "+request.getAttribute("name"));
    	System.out.println("세션의 속성 : "+session.getAttribute("name"));
    	System.out.println("애플리케이션의 속성 : "+application.getAttribute("name"));
    	request.getRequestDispatcher("A09Scope2.jsp").forward(request, response);
    	
%>

