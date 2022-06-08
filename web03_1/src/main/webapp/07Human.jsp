<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="b" scope="request" class="com.example.Human"></jsp:useBean><!-- 액션태그 -->
<%
	b.setCountry("대한민국");
	b.setName("이민환");
	b.setAge(26);
	b.setHobby("코딩");
%>
<jsp:forward page="07HumanUseBean.jsp"></jsp:forward>