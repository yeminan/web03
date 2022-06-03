<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 정보 수정</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="../member/login.jsp" /></c:if> --%>
<div id="content" class="content_wrap">
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
						<th>제목</th>
						<td>
							<input type="text" name="title" value="" required>
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							<input type="text" name="nickname" value="admin">
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea cols="100" rows ="7" name="lcontent" required></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<c:if test="${sid=='admin' }">
							<input type="submit" value="제품 정보 수정" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							</c:if>
							<c:if test="${sid!='admin' }">
							<a href="${path1 }/AddBasketCtrl?bno=${goods.bno }" class="button is-info">장바구니 담기</a>
							<a href="${path1 }/saleForm.jsp?bno=${goods.bno }" class="button is-info">바로 구매</a>
							</c:if>
							<a href="${path1 }/GetleadersListCtrl" class="button is-info">목록</a>
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