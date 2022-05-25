<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 처리 입력</title>
<link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css
">
</head>
<body>
<div class="panel=hedding">
<h2>점수 처리 입력 폼</h2>
</div>
<div class="panel=body">
<form action="A01Filter" method="post" novalidate>
	<table class="table">
		<tbody>
			<tr>
			<th>이름:</th>
				<td><input type="text" name= "name" size="30" maxlength="10"></td>
			</tr>
			<tr>
			<th>국어:</th>
				<td><input type="text" name= "kor" max="100" min="0" step="1"></td>
			</tr>
			<tr>
			<th>영어:</th>
				<td><input type="text" name= "eng" max="100" min="0" step="1"></td>
			</tr>
			<tr>
			<th>수학:</th>
				<td><input type="text" name= "mat" max="100" min="0" step="1"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="합계">
				</td>
			</tr>
		</tbody>
	</table>
	
</form>
</div>
</body>
</html>