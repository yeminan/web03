<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jumsu Form</title>
<link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="panel-heading">
		<h3 align="center">Form</h3>
	</div>

	<div class="panel-body">
		<form method="post" action="A07Forward.jsp" novalidate>
			<table class="table">
				<tr>
					<td>이름:</td>
					<td><input type="text" name="name" size="30" maxlength="10"></td>
				</tr>
				
				<tr>
					<td>국어:</td>
					<td><input type="number" name="kor" size="30" maxlength="10"></td>
				</tr>

				<tr>
					<td>수학:</td>
					<td><input type="number" name="eng" size="30" maxlength="10"></td>
				</tr>

				<tr>
					<td colspan="2">
						<input type="submit" value="전송"> 
						<input type="reset" value="리셋">
					</td>
				</tr>
			</table>

		</form>
	</div>


</body>
</html>