<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.example.Human" %>
<%
	String[] names = {"홍길동","김길동","이길동","박길동"};
	ArrayList<String> namelist = new ArrayList<String>();
	namelist.add("정길동");
	namelist.add("장길동");
	namelist.add("백길동");
	namelist.add("흑길동");
	
	ArrayList<Human> humanList = new ArrayList<Human>();
	Human h1 = new Human();
	h1.setCountry("대한민국");
	h1.setName("이장군");
	h1.setAge(26);
	h1.setHobby("싸움");
	humanList.add(h1);
	
	Human h2 = new Human();
	h2.setCountry("대한민국");
	h2.setName("김장군");
	h2.setAge(36);
	h2.setHobby("전투");
	humanList.add(h2);
	
	Human h3 = new Human();
	h3.setCountry("대한민국");
	h3.setName("박장군");
	h3.setAge(46);
	h3.setHobby("평화");
	humanList.add(h3);
	
	Human h4 = new Human();
	h4.setCountry("대한민국");
	h4.setName("백장군");
	h4.setAge(56);
	h4.setHobby("스킨스쿠버");
	humanList.add(h4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach, forToken</title>
</head>
<body>

</body>
</html>