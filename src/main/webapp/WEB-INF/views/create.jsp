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
	<a href="${pageContext.request.contextPath}/todo/">戻る</a>
	<h3>タスク新規入力画面</h3>
	<table>
		<tr>
			<td>1</td>
			<td><input type="text" name="task"></td>
		</tr>
		<tr>
			<td>2</td>
			<td><input type="text" name="task"></td>
		</tr>
		<tr>
			<td>3</td>
			<td><input type="text" name="task"></td>
		</tr>
		<tr>
			<td>4</td>
			<td><input type="text" name="task"></td>
		</tr>
		<tr>
			<td>5</td>
			<td><input type="text" name="task"></td>
		</tr>
	</table>
	<form action="${pageContext.request.contextPath}/todo/create" method="post">
		<input type="submit" name="create" value="登録">
	</form>
</body>
</html>