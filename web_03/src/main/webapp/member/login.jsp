<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<form action="${path1 }/loginCtrl" method="post" name="login_form">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>ID</th>
						<td><input type="text" name="userid" required></td>
					</tr>
					<tr>
						<th>PassWord</th>
						<td><input type="password" name="userpw" required></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="로그인" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
	</section>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>