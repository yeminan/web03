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
<style>
.page_tit { border-bottom:1px solid #cdcdcd; margin-bottom:25px; }
#lst_tb2 { width:1280px; margin:20px; auto; }
#lst_tb2 li { float:left; width:300px; height:600px; margin-right:15px; margin-top:15px; 
overflow:hidden; }
#lst_tb2 li img { display:block; width:100%; }
#lst_tb2 li.nothing { width:100%; clear:both; text-align:center; font-weight:bold; 
height:60px; line-height:60px; border-top:1px solid #cdcdcd; border-bottom:1px solid #cdcdcd;
margin-top:20px; margin-bottom:15px; }
#btn_group { clear:both; }
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="../member/login.jsp" /></c:if> --%>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<h2>상품목록</h2>
		<form action="${path1 }/GetLeadersListCtrl" method="post" class="frm_fr">
			<table class="table" id="search_tb">
				<tbody>
					<tr>
						<td>
							<select name="searchCondition">
								<option value="ltitle">상품이름</option>
								<option value="lcode">상품코드</option>
								<option value="lcontent">상품내용</option>
							</select>
							<input type="text" name="searchKeyword" required />
							<input type="submit" value="검색" class="button is-info"/>
						</td>
					</tr>
			</table>
		</form>
		<ul class="pro_lst" id="lst_tb2">
			<c:forEach items="${list }" var="vo" varStatus="status">
				<li>
					<div class="img_fr">
						<img src="${path1 }/upload/${vo.limg }" alt="${vo.limg }">
					</div>
					<div class="hidden item1">${status.count }</div>
					<h3 class="item_tit"><a href="${path1 }/GetLeadersCtrl?lcode=${vo.lcode }">${vo.ltitle }</a></h3>
					<p class="item_com">${vo.lprice }</p>
					
					<p class="item_data">
						
						<span>이름 : ${vo.ltitle }</span>
						<p>
						<span>카테고리: ${vo.lcategory }</span>
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
			<a href="${path1 }/leaders/addLeadersForm.jsp" class="button is-info">상품등록</a>
		</div>
		</c:if>
</section>	
</div>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
	