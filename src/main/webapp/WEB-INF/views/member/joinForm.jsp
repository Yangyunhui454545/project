<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %> <%--ContextPath 선언 --%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-wdith", initial-scale="1">

	<title>Sign Up</title>

	<link rel="stylesheet" href="${cp}/css/bootstrap.css">
	<link rel="stylesheet" href="${cp}/css/tave.css">
	<link rel="stylesheet" href="${cp}/css/form.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

	<script type="text/javascript">

		// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
		function checkValue()
		{
			if(!document.userInfo.id.value){
				alert("아이디를 입력하세요.");
				return false;
			}

			if(!document.userInfo.password.value){
				alert("비밀번호를 입력하세요.");
				return false;
			}

			// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
			if(document.userInfo.password.value != document.userInfo.passwordCheck.value ){
				alert("비밀번호를 동일하게 입력하세요.");
				return false;
			}
		}

		// 취소 버튼 클릭시 로그인 화면으로 이동
		function goLoginForm() {
			location.href="index";
		}
	</script>

</head>
<body>

<%@include file="/navigation.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="col-lg-12">
					<form:form action="${cp}/member/join" method="post" modelAttribute="member">
					<h2>TAVE 회원 가입</h2>
					<label>
						<p class="label-txt">이름</p>
						<form:input type="text" class="input" name="id" path="memId"/>
						<!--  <input type="text" class="input" id="name">-->
						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<label>
						<p class="label-txt">닉네임 (기수 + 이름 -> 5기 최인아)</p>
						<input type="text" class="input" name = "nickName" id="nickName">
						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<label>
						<p class="label-txt">비밀번호</p>
						<form:input type="password" class="input" name="password" path="memPw"/>
						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<label>
						<p class="label-txt">비밀번호 확인</p>
						<input type="password" class="input" id="passwordCheck">
						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<label>
						<p class="label-txt">- 없이 휴대폰 번호</p>
						<form:input type="text" class="input" path="phone"/>
						<div class="line-box">
							<div class="line"></div>
						</div>
					</label>
					<label>
						<input type="radio"  name="chk_info" value="운영진">운영진 &nbsp;
						<input type="radio"  name="chk_info" value="OB">OB &nbsp;
						<input type="radio" name="chk_info" value="YB">YB &nbsp;
					</label>
						<br><br>
					<button type="submit">제출</button>
					<button type="submit" onclick="goLoginForm()">취소</button>

					</form:form>
				</div>
			</div>
		</div>
	</div>


<%@include file="/footer.jsp"%>
</body>
</html>