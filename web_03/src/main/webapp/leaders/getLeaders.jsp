<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<title>상품정보보기</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<c:if test="${sid=='admin' }">
		<h2 class="page_tit">상품 정보 수정</h2>
		</c:if>
		<c:if test="${sid!='admin' }">
		<h2 class="page_tit">상품 정보 보기</h2>
		</c:if>
		<form action="${path1 }/EditLeadersCtrl" method="post" enctype="multipart/form-data">
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
				<tr>
						<th>상품명</th>
							<td>
							<c:if test="${sid=='admin' }">
							<input type="text" name="ltitle" value="${leaders.ltitle }" class="input is-normal" required>
							</c:if>
							<c:if test="${sid!='admin' }">
							<span>${leaders.ltitle }</span>
							</c:if>
							</td>
				</tr>
				<tr>
						<th>상품수량</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="number" name="lamount" min="1" max="10000" value="${leaders.lamount }" class="input is-normal" >
							</c:if>
							<c:if test="${sid!='admin' }">
							<span>${leaders.lamount }</span>
							</c:if>
						</td>
				</tr>
				<tr>
						<th>상품카테고리</th>
						<td>
							<c:if test="${sid=='admin' }">
							<select name="lcategory">
								<option value="Toothbrush">칫솔</option>
								<option value="Dental floss">치실</option>
								<option value="teeth">치간칫솔</option>
								<option value="dentures">틀니</option>
								<option value="supplies">세트용품</option>
							</select>
							<input type="hidden" name="lcode" value="${leaders.lcode }">
							</c:if>
							<span>${leaders.lcategory }</span>
						</td>
					</tr>
					<tr>
						<th>상품이미지</th>
						<td>
							<img src="${path1 }/upload/${leaders.limg }" alt="${leaders.limg }" />
							<c:if test="${sid=='admin' }">
							<input type="file" accept="*.jpeg,*.jpg, *.png, *.gif" name="limg" value="${leaders.limg }" class="input is-normal">
							</c:if>
							<c:if test="${sid!='admin' }">
							
							</c:if>
						</td>
					</tr>
					<tr>
						<th>상품 내용</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="text" name="lcontent" value="저희 리더스는 2009년에 설립된 치과 구가용품 전문 브랜드 입니다 전국 보건소,치과전용 구강위생용품을 수년간 납품해온 업체로 맛있는 칫솔로 건강한 치아를 지켜드립니다">
							<textarea cols="100" rows ="4" name="lcontent" required></textarea>	
							</c:if>
							<p>${leaders.lcontent }</p>
						</td>
					</tr>
					<tr>
						<th>상품가격</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="number" name="lprice" min="1000" max="1000000" step="100" value="${leaders.lprice }" class="input is-normal" required>
							</c:if>
							<c:if test="${sid!='admin' }">
							<span>${leaders.lprice }</span>
							</c:if>
						</td>
					</tr>
					<tr>
						<th>배송료</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="text" value="2500" name="ldelivery" readonly>
							</c:if>
							<c:if test="${sid!='admin' }">
							<span>${leaders.ldelivery }</span>
							</c:if>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<c:if test="${sid=='admin' }">
							<input type="submit" value="제품 정보 수정" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<a href="${path1 }/DelLeadersCtrl?gno=${leaders.lcode }" class="button is-info">상품 삭제</a>
							</c:if>
							<c:if test="${sid!='admin' }">
							<a href="${path1 }/AddBasketCtrl?gno=${leaders.lcode }" class="button is-info">장바구니 담기</a>
							<a href="${path1 }/saleForm.jsp?bno=${leaders.lcode }" class="button is-info">바로 구매</a>
							</c:if>
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
