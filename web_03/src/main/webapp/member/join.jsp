<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" /> 
<%
	String uid = "";
	if(uid != null) uid = (String) application.getAttribute("uid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<title>회원 정보 상세보기</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<h2>회원가입 페이지</h2>
		<form action="${path1 }/AddMemberCtrl" method="post" name="join_form" onsubmit="return joinCheck(this)">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>아이디*</th>
						<td>
							<c:if test="${empty userid }">
								<input type="text" name="userid" required>
							</c:if>
							<c:if test="${!empty userid }">
								<input type="text" name="userid" value="${userid }" required>
							</c:if>
							<button class="button is-info" onclick="idCheck()">중복체크</button>
							<input type="hidden" name="userid">
							<c:if test="${!empty msg }">
								<input type="hidden" name="ck" value="${msg }">
							</c:if>
							<c:if test="${empty msg }">
								<input type="hidden" name="ck" value="">
							</c:if>
						</td>
					</tr>
					<tr>
						<th>비밀번호*</th>
						<td>
							<input type="password" name="userpw" id="userpw" required>
						</td>
					</tr>
					<tr>
						<th>비밀번호 확인*</th>
						<td>
							<input type="password" name="userpw" id="userpw" required>
						</td>
					</tr>
					<tr>
						<th>이메일*</th>
						<td>
							<input type="email" name="email" required>
						</td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>
							<input type="tel" name="tel" required>
						</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<input type="text" name="address" id="address"><br>
							<input type="text" name="postcode" id="postcode">
							<input type="button" value="주소찾기" onclick="findAddress()" class="button is-info">
						</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>
							<input type="date" name="birth">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="가입" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<p>*은 필수항목으로 꼭 입력하셔야 합니다.</p>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
		<script>
		function idCheck() {
			
			var userid = document.join_form.userid.value;
			
			if(userid==""){
				alert("아이디가 입력되지 않았습니다. 아이디를 입력 후 진행하시기 바랍니다.");
				
				return false;
			} else {
				location.href="${path1 }/IdCheckCtrl?userid="+userid;
			}
		}
		</script>	
		<script>
		function joinCheck(f){
			if(f.userpw.value!=f.userpw2.value){
				alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
				return false;
			}
			if(f.ck.value!="yes"){
				alert("회원가입 중복체크를 진행하지 않았습니다.");
				return false;
			}
		}
		</script>
		<script>
		function findAddress() {
			new daum.Postcode({
				oncomplete: function(data) {
					console.log(data);
					var roadAddress = data.roadAddress;
					var jibunAddress = data.jibunAddress;
					document.getElementById("postcode").value = data.zonecode;
					if(roadAddress !== '') {
						document.getElementById("address").value = roadAddress;				
					} else if(jibunAddress !== ''){
						document.getElementById("address").value = jibunAddress;
					}
				}
			}).open();
		}
		</script>
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
	</section>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>