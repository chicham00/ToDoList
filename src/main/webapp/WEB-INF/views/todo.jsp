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

	<P>The time on the server is ${serverTime}.</P>
	<a href="${pageContext.request.contextPath}/todo/create">新規追加</a>


	<table>
		<tr>
			<td>1</td>
			<td>ほげ</td>
			<td><a href="${pageContext.request.contextPath}/todo/1/edit">編集</a></td>
			<td>
				<form action="${pageContext.request.contextPath}/todo/1/delete"
					method="post">
					<input type="submit" name="task" value="削除">
				</form>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td>ほげ</td>
			<td><a href="${pageContext.request.contextPath}/todo/1/edit">編集</a></td>
			<td>
				<form action="${pageContext.request.contextPath}/todo/1/delete"
					method="post">
					<input type="submit" name="task" value="削除">
				</form>
			</td>
		</tr>
		<tr>
			<td>3</td>
			<td>ほげ</td>
			<td><a href="${pageContext.request.contextPath}/todo/1/edit">編集</a></td>
			<td>
				<form action="${pageContext.request.contextPath}/todo/1/delete"
					method="post">
					<input type="submit" name="task1" value="削除">
				</form>
			</td>
		</tr>
		<tr>
			<td>4</td>
			<td>ほげほげ</td>
			<td><a href="${pageContext.request.contextPath}/todo/1/edit">編集</a></td>
			<td>
				<form action="${pageContext.request.contextPath}/todo/1/delete"
					method="post">
					<input type="submit" name="task1" value="削除">
				</form>
			</td>
		</tr>
		<tr>
			<td>5</td>
			<td>ほげ</td>
			<td><a href="${pageContext.request.contextPath}/todo/1/edit">編集</a></td>
			<td>
				<form action="${pageContext.request.contextPath}/todo/1/delete"
					method="post">
					<input type="submit" name="task1" value="削除">
				</form>
			</td>
		</tr>
	</table>

</body>
</html>
