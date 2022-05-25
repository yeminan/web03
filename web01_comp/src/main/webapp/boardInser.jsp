<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 목록</title>
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
	<h2>글쓰기</h2>
	<form action="boardInserPro.jsp" method="post" name="boardform" onsubmit="return writeCheck(this)">
		<table class="table">
				<tbody>
					<tr>
						<td class="necessary">제목 :</td>
					<td><input type="text" name="btitle" id="btitle" size="70"required></td>
					</tr>
					<tr>
						<td class="necessary">내용 :</td>
						<td>
					<textarea name="bcontent" id="bcontent" cols="80" rows="5"required></textarea>>
						<td>
					</tr>
					<tr>
						<td class="necessary">작성자 :</td>
					<td><input type="text" name="author" id="author" value="관리자"required></td>
					</tr>
					
				
					<tr>
					<td colspan="3">
					<input type="submit" value="등록" class="btn btn-primary"/>
					<input type="reset" value="취소" class="btn btn-primary"/>
					
					<button onclick="location.href='board1.jsp'">목록</button>
					
					</td>
			</tr>
		</tbody>
	</table>	
				<script>
				function writeCheck(f){
					var memo=f.bcontent.value;
					if(memo.length>=400){
						alert("400자이내여아합니다")
						return false
					}
				}

		</script>
		</form>
	</div>
</div>
		<footer id="ft" class="panel-footer">
			<%@ include file="ft.jsp" %>
</footer>
</body>
</html>