<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" initial-scale="1">

		<link rel="stylesheet" href="${cp}/css/bootstrap.css">
		<link rel="stylesheet" href="${cp}/css/tave.css">
		<link rel="stylesheet" href="${cp}/css/board.css">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Q&A</title>
	</head>

	<body>

<!--
	<%

		//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값

		String userID = null;

		if (session.getAttribute("userID") != null) {

			userID = (String) session.getAttribute("userID");



		}

	%>
-->
		<%@ include file="/navigation.jsp" %>

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

							<td><a href="viewQandA.html?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle()%></a></td>

							<td><%=list.get(i).getUserID()%></td>

							<td><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"

							+ list.get(i).getBbsDate().substring(14, 16) + "분"%></td>

						</tr>
						<%

							}

						%>
					</tbody>
				</table>
				<a href="writeQandA.html?bbsID=<%= bbsID %>" class="btn btn-primary">질문하기</a>
			</div>
		</div>

		<br>

		<%@ include file="/footer.jsp" %>

		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>