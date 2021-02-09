<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>ToDoList</h1>

	<P>The time on the server is ${serverTime}.</P>

	<a href="${pageContext.request.contextPath}/create">新規追加</a>
	<a href="${pageContext.request.contextPath}/edit">編集</a>
	<p>ほげほげ<a href="${pageContext.request.contextPath}/delete/id">削除</a></p>
	<p>ほげほげ<a href="${pageContext.request.contextPath}/delete/id">削除</a></p>
	<p>ほげほげ<a href="${pageContext.request.contextPath}/delete/id">削除</a></p>




</body>
</html>
