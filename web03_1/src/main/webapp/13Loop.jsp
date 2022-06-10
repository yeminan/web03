<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.example.Human" %>
<%
	/* 다른 곳에서 해당 자료를 forward해야 출력이 가능  */
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
	
	
	String irum="이민환-여승원-임소희-정우희";
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach, forToken을 활용한 반복문</title>
</head>
<body>
<h2>forEach</h2>
<h3>일반 for문 처럼 활용 </h3>
<c:set var="result" value="0"></c:set>
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="result" value="${result+i }"></c:set>
</c:forEach>
<p> 결과 : ${result }</p>

<h3>배열 for문 활용</h3>

<c:forEach items="${names }" var="item" varStatus="status">
	<p>${status.count }번 학생 : ${name }</p>
</c:forEach>
<hr>
<h3>리스트의 for문 활용 </h3>
<c:forEach items="${namelist }" var="name" varStatus="status">
	<p>${status.count }번의 학생 :${name }</p>
</c:forEach>
<hr>
<h3>리스트 제네릭의 for문 활용</h3>
<c:forEach items="${humanList }" var="human" varStatus="status">
	<p>${status.count }번 학생 :</p>
	<p>이름 : ${human.name }</p>
	<p>국가 : ${human.country }</p>
	<p>나이 : ${human.age }</p>
	<p>취미 : ${human.hobby }</p>
</c:forEach>
<hr>
<h3>맵의 for문 활용</h3>
<%-- <c:forEach items="${map }" var="item">
	<p>${item.key} : ${item.value }</p>
</c:forEach> --%>
<hr>
<h3>맵 제네릭 for문 활용</h3>
<%-- <c:forEach items="${humanMap }" var="human">
	<p>${human.key }</p>
	<p>${human.value }</p>
</c:forEach> --%>
<hr><hr>
<h2>forToKen</h2>
<h3>구분기호가 하나인 경우</h3>
<table>
<thead>
	<tr><th>이름</th></tr>
</thead>
<tbody>
<c:forTokens items="정길동-장길동-흑길동-백길동" delims="-" var="name">
	<tr><td>${name }</td></tr>
</c:forTokens>
</tbody>
</table>
<hr>
<h3>구분기호가 여러개 인 경우</h3>
<table>
<thead>
<tr><th>이름</th></tr>
</thead>
<tbody>
<c:forTokens items="정길동/장길동*흑길동 백길동" delims="/* " var="name">
	<tr><td>${name }</td></tr>
</c:forTokens>
</tbody>
</table>
</body>
</html>