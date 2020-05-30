<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>


	<link href="${cp}/css/tave.css" rel="stylesheet" />
	<link href="${cp}/css/bootstrap.css" rel="stylesheet" />
	<link href="${cp}/css/board.css" rel="stylesheet" />

	<meta charset="UTF-8">
	<style>
		td {
			text-align : left;
		}
	</style>
</head>
<body>

<%@ include file="/navigation.jsp" %>

<div class="container">
	<div class="row">
        <h1 class="text-center">REVIEW</h1>
        <br>
		<table class="table table-striped">
			<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>

				<th>작성자</th>
				<th>작성일</th>
			</tr>
			</thead>
			<tbody>
			<!-- CONTENTS !-->

			<c:forEach var="board" items="${boardList}">

				<tr>
					<td class="list"> ${board.id} </td>
					<td class="list"> <a href = "${cp}/detail/${board.id}" style = "color: black"> ${board.title}</a> </td>
					<td class="list"> ${board.writer} </td>
					<td class="list"> ${board.createdDate}" </td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<a  href="${cp}/write" class="btn btn-primary">글쓰기</a>

		<div>
			[[
			<c:forEach var= "pageNum" items = "${pageList}">
				<a href="@{'/?page=' + ${pageNum}}" style="color: black">${pageNum}</a>
			</c:forEach>
			]]
		</div>
		<br>
	</div>
</div>

<%@ include file="/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>

</body>
</html>