<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
	<link rel="stylesheet" href="${cp}/css/bootstrap.css">
	<link rel="stylesheet" href="${cp}/css/tave.css">
	<link rel="stylesheet" href="${cp}/css/board.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="/navigation.jsp"%>

<div class="container">
	<div class="row">
		<table class="table table-striped">
			<thead>
			<tr>
				<th colspan="3" class="viewTitle">${AttendanceDto.title}</th>
			</tr>
			</thead>
			<tbody>
			<tr>

				<td class="temp"></td>
				<td align="right" class="viewWriter">${AttendanceDto.writer}</td>
			</tr>
			<tr>
				<form action ="add?pageNum = ${param.pageNum}" method="post" class="btn btn-primary" enctype ="multipart/form-data"
					  onsubmit="return check()" name = "fm" >
					<input type = "file" name = "file"/>
				</form>
			</tr>
			<tr>
				<td colspan="3" style="min-height:200px; text-align:left"></td>
			</tr>
			</tbody>
		</table>
		<a href="${cp}/delete" class="btn btn-primary" align="left">삭제</a>
	</div>
</div>
<br>

<%@include file="/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>

</body>
</html>