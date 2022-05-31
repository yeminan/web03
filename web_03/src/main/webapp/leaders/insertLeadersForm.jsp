<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 등록</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="../member/login.jsp" /></c:if> --%>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<h2>제품등록</h2>
		<form action="${path1 }/AddLeadersCtrl" method="post">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>상품코드</th>
						<td>
						<c:if test="${sid=='admin' }">
							<input type="text" name="lcode" value="${leaders.lcode }">
						</c:if>
						<c:if test="${sid!='admin' }">
							<p>${leaders.lcode }</p>
						</c:if>
							<input type="hidden" name="lcode" value="${leaders.lcode }">
						</td>
					</tr>
					<tr>
						<th>상품수량</th>
						<td>
						<input type="number" name="lamount" min="1" max="20" step="1"><br>
						</td>
					</tr>
					<tr>
						<th>상품카테고리</th>
						<td>
							<input type= "text" name="lcategory" value="칫솔" >
						</td>
					</tr>
					<tr>
						<th>상품이미지</th>
						<td>
							<input type= "text" name="limg" value="어린이이중 슬림모" >
							<input type="image" src="${path1 }/img/brush.jpg" >
						</td>
					</tr>
					<tr>
						<th>상품 내용</th>
						<td>
							<textarea cols="100" rows ="7" name="lcontent" required>저희 리더스는 2009년에 설립된 치과 구가용품 전문 브랜드 입니다 전국 보건소,치과전용 구강위생용품을 수년간 납품해온 업체로 맛있는 칫솔로 건강한 치아를 지켜드립니다</textarea>	
						</td>
					</tr>
					<tr>
						<th>가격</th>
						<td>
							<input type="text" value="1500"name="lprice">
						</td>
					</tr>
					<tr>
						<th>배송료</th>
						<td>
							<input type="text" value="2000"name="ldelivery" >
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							<input type="submit"  value="글 등록" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<a href="${path1 }/GetLeadersListCtrl" class="button is-info">목록</a>
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
	</section>
	<script>
	$(document).ready(function(){
		$("#lst_tb_filter").css("display","none");
	});
	</script>	
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>