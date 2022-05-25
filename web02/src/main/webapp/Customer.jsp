<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.incheon.model.CustomerVO" %>
<%
	//보내진 customList 객체를 받아 customer로 분리하여 출력
	CustomerVO cus = (CustomerVO) request.getAttribute("customList");
	//CustomerVO cus = (CustomerVO) request.getAttribute("customList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보</title>
<style>
.tb1 { display:table; width:900px; margin:20px auto; border-collapse: collapse; }
.tb1 tr { display:table-row; }
.tb1 th, .tb1 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; }
.tb1 th { border-top:1px solid #333; background-color:#ccc; }
</style>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<form action="/web02/EditCustomerCtrl" method="post">
<table class="tb1">
	<thead>
		<tr><th>아이디</th><th>고객명</th><th>비밀번호</th><th>전화번호</th><th>이메일</th></tr>
	</thead>
	<tbody>
<%
	if(cus!=null){
%>
	<tr>
		<th>아이디</th>
		<td><input type="text" name="cid" value="<%=cus.getCid()%>" readonly></td>
	</tr>	
	<tr>
		<th>고객명</th>
		<td><input type="text" name="name" value="<%=cus.getName()%>"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="text" name="pw" value="<%=cus.getPw()%>"></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><input type="tel" name="phone" value="<%=cus.getPhone()%>"></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td><input type="text" name="birth" value="<%=cus.getBirth()%>"></td>
	</tr>
	<tr>
		<th>가입일</th>
		<td><input type="date" name="regdate" value="<%=cus.getRegdate()%>"></td>
	</tr>
	<tr>
		<th>방문횟수</th>
		<td><input type="text"name="visited" value="<%=cus.getVisited()%>"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="email" name="email" value="<%=cus.getAddress() %>"></td>
	</tr>
	<tr>
				<td colspan="2">
					<input type="submit" value="수정"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소"> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/GetCustomerListCtrl">목록</a>
				</td>
			</tr>
<%
	}
%>
	</tbody>
</table>
</form>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>