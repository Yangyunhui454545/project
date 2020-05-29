<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>

	<title>지원하기</title>

	<link href="${cp}/css/tave.css" rel="stylesheet" />
	<link href="${cp}/css/bootstrap.css" rel="stylesheet" />
	<link href="${cp}/css/board.css" rel="stylesheet" />

	<meta charset="UTF-8">
</head>
<body>

<%@ include file="/navigation.jsp" %>

<div class="container">
	<div class="row">
		<img class="img-responsive center" src="${cp}/images/recruit.png" alt="recruit">
		<a href="https://docs.google.com/forms/d/e/1FAIpQLScMADcsju4cC96oUcheV2jJT-IyHZowpbTo8GfX1HET-A35mQ/viewform?vc=0&c=0&w=1&usp=mail_form_link" class="btn btn-primary">지원하러가기</a>
	</div>
</div>

<%@ include file="/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>

</body>
</html>