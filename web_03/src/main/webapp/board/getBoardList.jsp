<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="path1" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>


<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="Login.jsp"/></c:if> --%>

<div id="content" class="content_wrap">
<section class="con_wrap">
<div>
	<%-- <h3>${name }님 $nbsp; $nbsp;<a href="../LogoutCtrl">로그아웃</a></h3> --%>
</div>
	<h2>글 목록</h2>
	<form method="post" action="${path1 }/GetBoardSearchCtrl" class="frm_fr">
	<table class="table" id="search_tb">
		<tr>
			<td>
				<select name="searchCondition">
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="id">작성자</option>
				</select>
				<input type="text" name="searchKeyword"/>
				<input type="submit" value="검색"/>
			</td>
		</tr>
	</table>
	</form>
	<table class="table" id="lst_tb">
		<thead>
			<tr>
				<th class="item1">번호</th>
				<th class="item2">제목</th>
				<th class="item3">내용</th>
				<th class="item4">작성일</th>
				<th class="item5">작성자</th>
				<th class="item6">조회수</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="vo" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td><a href="${path1 }/GetBoardCtrl?num=${vo.seq }">${vo.title }</a></td>
				<td>${vo.content }</td>
				<td>${vo.regdate }</td>
				<td>${vo.id }</td>
				<td>${vo.visit }</td>
			</tr>
		</c:forEach>
		<c:if test="${sid=='admin'}">
		<tr>
			<td colspan="6"><a href="${path1 }/board/addBoardForm.jsp" class="button is-info">글 등록</a></td>
		</tr>
		</c:if>
		</tbody>
	</table>
</section>	
<script>
$(document).ready(function(){
	$("#lst_tb_filter").css("display"."none");
});
</script>
</div>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>