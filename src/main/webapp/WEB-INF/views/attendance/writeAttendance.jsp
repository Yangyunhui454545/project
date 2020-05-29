<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
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
				<form method="post" action="writeAction.jsp">
					<table class="table table-striped">
						<thead>
							<tr>
								<th colspan="2">출결 관리 작성</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control title" placeholder="제목" name="bbsTitle" maxlength="50"/></td>
							</tr>
							<tr>
								<td colspan="2">
									<form action ="add?pageNum = ${param.pageNum}" method="post" class="btn btn-primary" enctype ="multipart/form-data"
										  onsubmit="return check()" name = "fm" >
										<input type = "file" name = "file"/>
									</form>
								</td>
							</tr>
						</tbody>
					</table>	
					<input type="submit" class="btn btn-primary" value="글쓰기" />
				</form>
			</div>
		</div>

		<br>

<%@include file="/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>

</body>
</html>