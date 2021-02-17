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

	<form action="${pageContext.request.contextPath}/todo/create"method="post">
		<input type="text" name="name">
		<button type="submit" name="create" value="登録">登録</button>
	</form>
</body>
</html>