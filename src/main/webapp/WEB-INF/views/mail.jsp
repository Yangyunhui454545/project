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
</head>
<body>

<%@ include file="/navigation.jsp" %>
<div class="container">
	<div class="row">
		<form action ="${cp}/mail" method="post">
			<table class="table table-striped">
				<thead>
				<tr>
					<th colspan="2">질문하기</th>
				</tr>
				</thead>
				<tbody>

				<tr>
					<td><input type="email" class="form-control QandA" id="exampleInputEmail1" name = "address" aria-describedby="emailHelp" placeholder="이메일"></td>
				</tr>
				<tr>
					<td><input type="text" class="form-control QandA" placeholder="제목" name="title" maxlength="50"/></td>
				</tr>
				<tr>
					<td><textarea class="form-control text QandA" placeholder="내용" name="message" maxlength="2048" style = "height: 350px; "></textarea></td>
				</tr>
				</tbody>
			</table>
			<input type="submit" class="btn btn-primary" value="이메일 보내기" />
		</form>
	</div>
</div>

<br>
<%@ include file="/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>

</body>
</html>