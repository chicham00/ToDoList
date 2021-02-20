<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>編集</title>
</head>
<body>
	<h1>ToDoList</h1>
	<h3>編集画面</h3>
	<div>
		<form action="/ToDoList/todo/${task.getId()}/edit" method="post">
			<input type="hidden" name="_method" value="POST">
			<input type="text" name="name" value="${task.getName()}">
			<button type="submit">編集する</button>
		</form>
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/todo">戻る</a>
	</div>
</body>
</html>