<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl의 변수 선언(c:set)과 제거(c:remove) 그리고, 조건분기문(c:if)과 선택문(c:choose)</title>
</head>
<body>
<h2>Set</h2>
<!-- jstl을 활용하여 현재 페이지에서 사용할 변수 num1로 값은 10을 지정하라 -->
<%-- <%pageContext.setAttribute("num1", 10); %> --%>
<c:set var="num1" scope="page" value="10" />

<!-- jstl을 활용하여 애플리케이션내에서 사용할 변수 num2로 값은 20을 지정하라 -->
<%-- <% application.setAttribute("num2", 20); %> --%>
<c:set var="num2" scope="application" value="20" />

<!-- num1과 num2를 합산한 결과를 num3로 변수를 지정하고,num1+num2=num3형식으로 출력 -->
<c:set var="num3" value="${num1+num2 }"/>
<p> 결과 : ${num1 } + ${num2 } = ${num3 }</p>

<h3>액션태그를 활용한 객체 활용</h3>
<jsp:useBean id="vo"  class="com.example.Human"></jsp:useBean>
<jsp:setProperty property="country" value="대한민국" name="vo" />
<jsp:setProperty property="name" value="이민환" name=vo />
<jsp:setProperty property="age" value="26" name=vo />
<jsp:setProperty property="hobby" value="코딩" name=vo />
<p>국가 : ${vo.country }<br>이름 :${vo.name } <br> 나이 ${vo.age }<br> 취미${vo.hobby }</p>
<h3>jstl을 활용한 객체 활용</h3>
<c:set target="${vo }" property="country" value="독일"></c:set>
<c:set target="${vo }" property="name" value="베르너"></c:set>
<c:set target="${vo }" property="age" value="500"></c:set>
<c:set target="${vo }" property="hobby" value="축구"></c:set>
<p>국가 : ${vo.country }<br>${vo.name }<br>${vo.age }<br>${vo.hobby }</p>
<hr><hr>
<h2>remove</h2>
<h3>일반 변수 (Primitive type) 제거</h3>
<c:set var="irum" value="손석구" />
<p>이름 : ${irum }</p>
<!-- irum 변수를 제거하라 -->
<c:remove var="irum"/>

<h3>객체(Reference type) 제거</h3>
<!--  vo 객체를 제거하라 -->
<c:remove var="vo"/>
<h2>if</h2>
<c:if test="${num1>num2 }"></c:if>
<p>${num1 }이 ${num2 }보다 크다</p>
<c:if test="${num1<num2 }"></c:if>
<p>${num1 }이 ${num2 }보다 작다</p>
<c:if test="${num1==num2 }"></c:if>
<p>${num1 }과 ${num2 }이 같다</p>

<hr><hr>
<h2>choose, when, otherwise</h2>
<c:choose>
	<c:when test="${num1>num2 }">
	<p>${num1 }이 ${num2 }보다 크다</p>	
	</c:when>
	<c:when test="${num1<num2 }">
	<p>${num1 }이 ${num2 }보다 작다</p>	
	</c:when>
	<c:otherwise>
	<p>${num1 }과 ${num2 }이 같다</p>
	</c:otherwise>
</c:choose>
</body>
</html>