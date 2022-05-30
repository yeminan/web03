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
		<form action="${path1 }/AddLeadersListCtrl" method="post">
			<table class="table" id="search_tb">
				<tbody>
					<tr>
			<td>
				<select name="searchCondition">
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
		
		<table class="table" id="lst_tb">
		<thead>
			<tr>
				<th class="item1">상품코드</th>
				<th class="item2">상품가격</th>
				<th class="item3">상품카테고리</th>
				<th class="item4">배송료</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="vo" varStatus="status">
			<tr>
				<td>${vo.lcode }</td>
				<td><a href="${path1 }/GetLeadersCtrl?num=${vo.lcode }">${vo.lprice }</a></td>
				<td>${vo.lcategory }</td>
				<td>${vo.ldelivery }</td>
			</tr>
		</c:forEach>
		<c:if test="${sid=='admin'}">
		<tr>
			<td colspan="6"><a href="${path1 }/board/addBoardForm.jsp" class="button is-info">글등록</a></td>
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
	<%-- 
					<tr>
						<th>상품코드</th>
						<td>
							<input type="text" name="lcode" value="1" readonly>
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
							<input type= "text" name="limg" value="어린이용치실" readonly>
							<input type="image" src="${path1 }/img/leaderssill.jpg" >
						</td>
					</tr>
					<tr>
						<th>상품 내용</th>
						<td>
							<textarea cols="100" rows ="7" name="lcontent" required></textarea>	
						</td>
					</tr>
					<tr>
						<th>가격</th>
						<td>
							<input type="text" value="2500"name="lprice" readonly>
						</td>
					</tr>
					<tr>
						<th>배송료</th>
						<td>
							<input type="text" value="2000"name="ldelivery" readonly>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="상품등록" class="button is-info"/>
							<input type="reset" value="상품등록 취소" class="button is-info"/>
							<a href="${path1 }/GetBoardListCtrl" class="button is-info">상품목록</a>
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
</html> --%>