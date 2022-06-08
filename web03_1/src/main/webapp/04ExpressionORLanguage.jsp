<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.lang.*" %>
    <%@ page import="com.example.Human" %>
<%
String name ="이민환";
int num =1004;
int num1= 70, num2 =62;
int num3= 0;
Human human = new Human();
human.setCountry("South Korea");
human.setName("Lee min hwan");
human.setAge(26);
human.setHobby("Music");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression OR ExpressionLanguage</title>
</head>
<body>
	<h2>표현식 (Expression)</h2>
	<p>1. jsp 문자열 출력 :<%="Hello JSP" %></p>
	<p>2. jsp 문자열 출력2 :<% out.println("<stron>Hello JSP</stron>"); %></p>
	<p>3. jsp의 숫자 출력 : <%=1004 %></p>
	<p>4. jsp의 변수의 문자열값 출력 : <%=name %></p>
	<p>5. jsp의 변수의 숫자값 출력 : <%=num %></p>
	<p>6. jsp의 변수의 문자열+숫자값 출력 : <%=name+num %></p>
	<p>7. jsp의 변수의 숫자의 연산된 결과 출력 출력 : <%=num1+num2 %></p>
	<p>8. jsp의 변수의 비교 결과 출력 : <%=num1>num2 %></p>
	<p>9. jsp의 변수의 나머지 연산 결과 출력 : <%=num1%num2 %></p>
	<p>10. jsp의 변수의 빼기 연산 결과 출력 : <%=num1-num2 %></p>
	<p>11. jsp의 변수의 더하기 연산 결과 출력 : <%=num1+num2 %></p>
	<p>12. jsp의 변수의 곱하기 연산 결과 출력 : <%=num1*num2 %></p>
	<p>13. jsp의 변수의 나누기 연산 결과 출력 : <%=num1/num2 %></p>
	<p>14. jsp의 변수의 삼항연산자 연산 결과 출력 : <%=num1>100 ? "큰수" : "작은수" %></p>
	<p>15. jsp의 객체 접근 : <%=human.getName() %></p>
	<p>16. jsp의 표현식 연산 : <%=num3=num1+num2 %></p>
	<hr>
	<h2>표현언어(Expression Language : - 즉시(Real) 실행)</h2>
	<code>
	<%-- ${객체명|변수명|연산식 } --%>
	<!-- 다른 jsp페이지나 Controller에서 전달된 결과나 저장된 데이터만 출력됨 -->
	</code>
	<p>1. jsp의 표현이 문자열 출력 : ${"Hello EL" }</p>
	<p>2. jsp의 표현이 문자열 출력 : ${1004 }</p>
	<p>3. jsp의 표현이 변수의 문자열값 출력 : ${name }</p>
	<p>4. jsp의 표현이 변수의 숫자값 출력 : ${num}</p>
	<p>5. jsp의 표현이 문자열+숫자 연산된 결과 : ${name+num}</p>
	<p>6. jsp의 표현이 숫자 더하기 연산된 결과 : ${num1+num2 }</p>
	<p>7. jsp의 표현이 숫자 빼기 연산된 결과 : ${num1-num2 }</p>
	<p>8. jsp의 표현이 숫자 곱하기 연산된 결과 : ${num1 * num2 }</p>
	<p>9. jsp의 표현이 숫자 나누기 연산된 결과 : ${num1 / num2 }</p>
	<p>10. jsp의 표현이 숫자 나머지 연산된 결과 : ${num1 % num2 }</p>
	<p>11. jsp의 표현이 삼항 연산자 결과 : ${num1>100 ? "큰수" : "작은수" }</p>
	<p>12. jsp의 표현이 객체접근1 : ${human.getName() }</p>
	<p>13. jsp의 표현이 객체접근2 : ${human.name }</p>
	<h2>표현언어 (Expression Language)2 : - 지연(Deferred) 실행)</h2>
	<code>
	<%-- #{객체명|변수명|연산식 } --%>
	</code>
<!--<p>14. jsp의 연산 종료 후 출력</p>
	<p>15. jsp의 연산 종료 후 출력</p>  jar 넣어야함-->	
	<p> 숫자열 빼기 연산 출력결과${num1 - num2 }</p>
</body>
</html>