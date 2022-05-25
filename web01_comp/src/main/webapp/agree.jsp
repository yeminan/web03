<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 약관 및 동의</title>

</head>
<body>
<div class="container-full">
<header id="hd" >
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<div class="container-fluid">
		<h2>회원 약관 및 개인정보처리방침</h2>
		<div role="form" class="form-horizontal">
			<textarea rows="10" cols="50" readonly>회원약관</textarea><br>
			<input type="checkbox" name="ck1" id="ck1"> 회원약관에 동의합니다.
			<br><br><br>
			<textarea rows="10" cols="50" readonly>개인정보처리방침</textarea><br>
			<input type="checkbox" name="ck2" id="ck2"> 개인정보처리방침에 동의합니다.
			<br><br><br>
			<button id="btn1" onclick="fnc1()" class="btn btn-primary">회원가입</button>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<a href="javascript:history.back()" class="btn btn-primary">취소</a>
			<br><br>
			<script type="text/javascript">
				function fnc1(){
					var ck1 = document.getElementById("ck1");
					var ck2 = document.getElementById("ck2");
					if(ck1.checked && ck2.checked) {
						location.href = "join.jsp";
						return false;
					} else {
						alert("약관에 동의하지 않으셨습니다.");
						return false;
					}
				}
			</script>
		</div>
	</div>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>