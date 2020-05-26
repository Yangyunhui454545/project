<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-wdith", initial-scale="1">

		<title>출결 관리</title>

		<link rel="stylesheet" href="${cp}/css/bootstrap.css">
		<link rel="stylesheet" href="${cp}/css/tave.css">
		<link rel="stylesheet" href="${cp}/css/board.css">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
		<%@ include file=navigation.jsp" %>
		
		<div class="container">
			<div class="row">
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
						<tr>

							<td><%=list.get(i).getBbsID()%></td>

							<td><a href="viewAttendance.html?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle()%></a></td>

							<td><%=list.get(i).getUserID()%></td>

							<td><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"

							+ list.get(i).getBbsDate().substring(14, 16) + "분"%></td>

						</tr>
						<%

							}

						%>
					</tbody>
				</table>
				<a href="writeAttendance.html?bbsID=<%= bbsID %>" class="btn btn-primary">글쓰기</a>
			</div>
		</div>

		<br>

		<%@ include file=footer.jsp" %>

		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>