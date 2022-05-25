<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
<style>
</style>
</head>
<body>
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<div class="container-fluid">
	<h2>회원가입</h2>
	<form action="joinPro.jsp" method="post" name="joinform" onsubmit="return joinCheck(this)">
		<table class="table">
				<tbody>
					<tr>
						<td class="necessary">아이디 :</td>
					<td><input type="text" name="uid" id="uid"required></td>
					<td><input type="button" id="popopen"value="아이디중복확인"class="btn btn-primary" onclick="idCheck()"></td>
					<td><input type="hidden" id="idck" name="idck" value=""></td>
					
					</tr>
					<tr>
						<td class="necessary">비밀번호 :</td>
					<td><input type="text" name="upw" id="upw"required></td>
					</tr>
					<tr>
						<td class="necessary">비밀번호확인 :</td>
					<td><input type="text" name="upw" id="upw"required></td>
					</tr>
					<tr>
						<td class="necessary">이름 :</td>
					<td><input type="text" name="name" id="name"required></td>
					</tr>
					<tr>
						<td class="opt">전화번호 :</td>
					<td><input type="tel" name="phone" id="phone">
					</td>
					</tr>
					<tr>
						<td class="opt">주소 :</td>
					<td><input type="text" name="address" id="address">
					</td>
					</tr>
					<tr>
						<td colspan="2">
					<input type="submit" value="회원가입"/>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
					<input type="reset" value="취소"/>
					</td>
			</tr>
		</tbody>
	</table>	
	
	
				<script>
				function idCheck(){
						window.open("pop.jsp","idwin","width=400, height=300");
				}
				function joinCheck(f){
						if(f.idck.value!="yes"){
							alert("아이디 중복 검사를 진행하지 않습니다.")
							return false;
								}
						if(f.upw.value!=f.upw2.value){
							alert("비밀번호와 비밀번호 확인이 서로 입력값이 다릅니다.")
							return false;
					}
				}
		</script>
		</form>
	</div>
</div>
		<footer id="ft" class="panel-footer">
			<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>