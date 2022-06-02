<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="../member/login.jsp" /></c:if> --%>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<h2>상품목록</h2>
		<form action="${path1 }/GetLeadersListCtrl" method="post">
			<table class="table" id="search_tb">
				<tbody>
					<tr>
			<td>
				<select name="searchCondition">
					<option value="title">상품제목</option>
					<option value="lcode">상품코드</option>
					<option value="lcontent">상품내용</option>
					<option value="lcategory">상품카테고리</option>
				</select>
				<input type="text" name="searchKeyword"/>
				<input type="submit" value="검색" class="button is-info"/>
			</td>
		</tr>
		</table>
		</form>
		<ul class="pro_lst" id="lst_tb2">
			<c:forEach items="${list }" var="vo" varStatus="status">
				<li>
					<div class="img_fr">
						<img src="${path1 }/upload/${vo.limg }" alt="${vo.lamount }">
					</div>
					<div class="hidden item1">${status.count }</div>
					<h3 class="item_tit"><a href="${path1 }/GetLeadersCtrl?lcode=${vo.lcode }">${vo.lamount }</a></h3>
					
					<p class="item_com">${vo.lprice }</p>
					<p class="item_data">
						<span>카테고리: ${vo.lcategory }</span>
						<p>
						<span>이미지 : ${vo.limg }</span><br>
						<p>
						<span>내용 : ${vo.lcontent }</span>
						<p>
						<span>남은 수량 : ${vo.lamount }</span>
						<p>
						<span>배송료 :${vo.ldelivery }</span>
						</p>
				</li>
	
			</c:forEach>
			<c:if test="${vo==null }">
				<li class="nothing">더 이상 상품이 존재하지 않습니다.</li>
			</c:if>
		</ul>

		<c:if test="${sid=='admin'}">
		<div id ="btn_group">
			<a href="${path1 }/leaders/insertLeadersForm.jsp" class="button is-info">상품등록</a>
		</div>
		</c:if>
</section>	
</div>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
	