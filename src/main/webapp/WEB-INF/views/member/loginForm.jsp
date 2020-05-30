<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %> <%--ContextPath 선언 --%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.w3.org/1999/xhtml">

<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-wdith", initial-scale="1">

	<title>Sign In</title>

	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/tave.css">

	<style>
		body {
			background: #006699;
		}
		form {
			width: 60%;
			margin: 60px auto;
			background: #efefef;
			padding: 60px 120px 80px 120px;
			text-align: center;
			-webkit-box-shadow: 2px 2px 3px rgba(0,0,0,0.1);
			box-shadow: 2px 2px 3px rgba(0,0,0,0.1);
		}
		label {
			display: block;
			position: relative;
			margin: 40px 0px;
		}
		.label-txt {
			position: absolute;
			top: -1.6em;
			padding: 10px;
			font-family: sans-serif;
			font-size: .8em;
			letter-spacing: 1px;
			color: rgb(120,120,120);
			transition: ease .3s;
		}
		.input {
			width: 100%;
			padding: 10px;
			background: transparent;
			border: none;
			outline: none;
		}

		.line-box {
			position: relative;
			width: 100%;
			height: 2px;
			background: #BCBCBC;
		}

		.line {
			position: absolute;
			width: 0%;
			height: 2px;
			top: 0px;
			left: 50%;
			transform: translateX(-50%);
			background: #0066CC;
			transition: ease .6s;
		}

		.input:focus + .line-box .line {
			width: 100%;
		}

		.label-active {
			top: -3em;
		}

		button {
			display: inline-block;
			padding: 12px 24px;
			background: #0066CC;
			font-weight: bold;
			color: #dcdcdc;
			border: none;
			outline: none;
			border-radius: 3px;
			cursor: pointer;
			transition: ease .3s;
		}

		button:hover {
			background: #006699;
			color: #dcdcdc;
		}
	</style>
</head>
<body>
<%@include file="/navigation.jsp"%>

<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="col-lg-12">
				<form:form action="${cp}/member/login" method="post" modelAttribute="member">
					<h2>TAVE Sign In</h2>
					<label>
						<p class="label-txt">기수 + 이름 ex) 5기 최인아</p>
						<form:input type = "text" class="input" path="memId" />

						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<label>
						<p class="label-txt">비밀번호</p>
						<form:input type="password" class="input" path="memPw"/>
						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<button type="submit">Sign In</button>
				</form:form>
			</div>
		</div>
	</div>
</div>

<%@include file="/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../../../../resources/static/js/bootstrap.js"></script>
</body>
</html>