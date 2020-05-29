<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
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
				<form method="post" action="writeAction.jsp">
					<table class="table table-striped">
						<thead>
							<tr>
								<th colspan="2">활동 작성</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control title" placeholder="제목" name="bbsTitle" maxlength="50"/></td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="filebox preview-image"> 
										<input type="file" id="input-file" class="upload-hidden"> 
									</div>
								</td>
							</tr>

						</tbody>
					</table>	
					<input type="submit" class="btn btn-primary" value="글쓰기" />
				</form>
			</div>
		</div>

		<br>


	<%@ include file="/footer.jsp" %>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>

	</body>
</html>