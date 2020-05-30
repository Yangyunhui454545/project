<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %> <%--ContextPath 선언 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<title>My Page</title>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="${cp}/css/tave.css" rel="stylesheet" />
	<link href="${cp}/css/bootstrap.css" rel="stylesheet" />
	<link href="${cp}/css/form.css" rel="stylesheet" />

	<style>
		.line-box {
			background: #0066CC;
		}
	</style>
</head>
<body>
<%@ include file="/navigation.jsp" %>

<form:form action="${cp}/member/modifyForm" method="post" modelAttribute="member">

	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="col-lg-12">

					<form:hidden path="memId" value="${member.memId}"/>
					<form:hidden path="memPw" value="${member.nickName}"/>
					<form:hidden path="phone" value="${member.phone}"/>
					<h2>개인 정보</h2>
					<label>
						<p class="label-txt">이름</p>
						<input type="text" class="input" id="name" disabled>
							${member.memId}
						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<label>
						<p class="label-txt">닉네임 (기수 + 이름 -> 5기 테이비)</p>
						<input type="text" class="input" id="nickName" disabled>
							${member.nickName}
						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<label>
						<p class="label-txt">- 없이 휴대폰 번호</p>
						<input type="text" class="input" id="phoneNumber" disabled>
							${member.phone}
						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<button type="submit">수정하기</button>
				</div>
			</div>
		</div>
	</div>

	<br>
</form:form>

<%@ include file="/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>