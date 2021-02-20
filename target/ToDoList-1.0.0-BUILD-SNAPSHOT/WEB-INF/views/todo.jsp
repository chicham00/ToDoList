<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>ToDoList</h1>

	<h2>タスク一覧</h2>
	<a href="${pageContext.request.contextPath}/todo/create">新規追加</a>
	<ul>
		<c:forEach var="task" items="${tasks}">
			<li><div class="col-sm">${task.getName()}</div>
			<a
				href="${pageContext.request.contextPath}/todo/${task.getId()}/edit">編集</a>
				<form
					action="${pageContext.request.contextPath}/todo/${task.getId()}/delete"
					method="post">
					<input type="submit" name="task" value="削除">
				</form></li>
		</c:forEach>
	</ul>
</body>
</html>
