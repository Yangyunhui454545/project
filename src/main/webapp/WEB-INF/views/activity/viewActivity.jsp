<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>

	<title>활동</title>

	<link href="${cp}/css/tave.css" rel="stylesheet" />
	<link href="${cp}/css/bootstrap.css" rel="stylesheet" />
	<link href="${cp}/css/board.css" rel="stylesheet" />

	<meta charset="UTF-8">
</head>
<body>

<%@ include file="/navigation.jsp" %>

<div class="container">
	<div class="row">
		<table class="table table-striped">
			<thead>
			<tr>
				<th colspan="3" class="viewTitle">도너츠이야기</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<!--
                <td style="width: 20%;"> 글 제목 </td>
                <td></td>
                -->
				<td class="temp"></td>
				<td align="right" class="viewWriter">최인아</td>
				<td>1998-05-02</td>
			</tr>
			<tr>
				<td colspan="3" class="viewText"></td>
			</tr>
			<tr>
				<td colspan="3" align="left">
					<a href="file/test.pdf" class="btn btn-primary">파일 다운받기</a>
				</td>
			</tr>
			</tbody>
		</table>
		<a class="btn btn-primary" align="left">수정</a>
		<a class="btn btn-primary" align="left">삭제</a>
	</div>
</div>

<br>

<%@ include file="/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
</div>
</div>
</div>
</body>
</html>