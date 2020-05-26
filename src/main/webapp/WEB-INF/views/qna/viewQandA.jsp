<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-wdith", initial-scale="1">

		<title>질문</title>

		<link rel="stylesheet" href="${cp}/css/bootstrap.css">
		<link rel="stylesheet" href="${cp}/css/tave.css">
		<link rel="stylesheet" href="${cp}/css/board.css">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		<style>
		</style>
	</head>
	<body>
		<%@ include file=navigation.jsp" %>

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
					</tbody>
				</table>	
				<a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary" align="left">수정</a>
				<a href="delete.jsp?bbsID=<%= bbsID %>" class="btn btn-primary" align="left">삭제</a>
		</div>
		</div>

		<br>

		<%@ include file=footer.jsp" %>

		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>