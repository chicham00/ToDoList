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

	<input type="text" name="task">
	<div>
		<form action="${pageContext.request.contextPath}/todo/1/edit"
			method="post">
			<input type="submit" name="edit" value="登録">
		</form>
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/todo">戻る</a>
	</div>
</body>
</html>