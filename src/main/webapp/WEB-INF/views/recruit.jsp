<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-wdith", initial-scale="1">

		<title>지원하기</title>

		<link rel="stylesheet" href="${cp}/css/bootstrap.css">
		<link rel="stylesheet" href="${cp}/css/tave.css">
		<link rel="stylesheet" href="${cp}/css/board.css">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
		<%@ include file=navigation.jsp" %>

		<div class="container">
			<div class="row">
				<img class="img-responsive center" src="images/recruit.png" alt="recruit">
				<a href="https://docs.google.com/forms/d/e/1FAIpQLScMADcsju4cC96oUcheV2jJT-IyHZowpbTo8GfX1HET-A35mQ/viewform?vc=0&c=0&w=1&usp=mail_form_link" class="btn btn-primary">지원하러가기</a>
			</div>
		</div>

		<br>

		<%@ include file=footer.jsp" %>

		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>