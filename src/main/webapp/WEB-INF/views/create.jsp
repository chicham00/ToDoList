<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規追加</title>
</head>
<body>
	<h1>ToDoList</h1>
	<a href="${pageContext.request.contextPath}">登録</a>
	<a href="${pageContext.request.contextPath}">戻る</a>


	<form action="${pageContext.request.contextPath}/" method="post">
		<table class="table">
			<tr>
				<td></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="text"></td>
			</tr>
		</table>
		<input type="submit" value="登録">

	</form>
</body>
</html>