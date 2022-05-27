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
		<form action="${path1 }/AddLeadersCtrl" method="post">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>상품코드</th>
						<td>
							<input type="text" name="title" value="a123코드" readonly>
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
						<input type="button" value="칫솔"   	name="lcategory"><br>
						<input type="button" value="치실" 	name="lcategory"><br>
						<input type="button" value="치간칫솔" 	name="lcategory"><br>
						<input type="button" value="틀니" 	name="lcategory"><br>
						<input type="button" value="세트용품" 	name="lcategory"><br>
						<input type="button" value="구강위생용품" 	name="lcategory"><br>
						<input type="button" value="생활용품" 	name="lcategory"><br>
		
						</td>
					</tr>
					<tr>
						<th>상품이미지</th>
						<td>
							<input type= "text" name="lcode" value="어린이1회용칫솔" readonly>
							<input type="image" src="${path1 }/leaderssill.png" >
						</td>
					</tr>
					<tr>
						<th>상품 내용</th>
						<td>
							<textarea cols="100" rows ="7" name="content" required></textarea>	
						</td>
					</tr>
					<tr>
						<th>가격</th>
						<td>
							<input type="text" value="1500원"name="lprice" readonly>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="상품등록" class="button is-info"/>
							<input type="reset" value="상품등록 취소" class="button is-info"/>
							<a href="${path1 }/GetLeadersListCtrl" class="button is-info">상품목록</a>
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