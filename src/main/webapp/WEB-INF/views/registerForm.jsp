<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-wdith", initial-scale="1">

		<title>Sign Up</title>

		<link rel="stylesheet" href="${cp}/css/bootstrap.css">
		<link rel="stylesheet" href="${cp}/css/tave.css">
		<link rel="stylesheet" href="${cp}/css/form.css">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
		<%@ include file=navigation.jsp" %>

		<div class="container">
    	<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="col-lg-12">
					<form>
						<h2>TAVE 회원 가입</h2>
							<label>
								<p class="label-txt">이름</p>
								<input type="text" class="input" id="name">
								<div class="line-box">
									<div class="line"></div>
								</div>
							</label>
							<label>
								<p class="label-txt">닉네임 (기수 + 이름 -> 5기 최인아)</p>
								<input type="text" class="input" id="nickName">
								<div class="line-box">
									<div class="line"></div>
								</div>
							</label>
							<label>
								<p class="label-txt">비밀번호</p>
								<input type="password" class="input" id="password">
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
								<input type="text" class="input" id="phoneNumber">
								<div class="line-box">
									<div class="line"></div>
								</div>
							</label>
							<label>
								<p class="label-txt">기수</p>
								<input type="text" class="input" id="num">
								<div class="line-box">
									<div class="line"></div>
								</div>
							</label>
							<label>
								<input type="radio" id="classifyMember" name="chk_info" value="운영진">&nbsp;운영진 &nbsp;&nbsp;
								 <input type="radio" id="classifyMember" name="chk_info" value="회원">&nbsp;회원
							</label>
							<button type="submit">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<br>

		<%@ include file=footer.jsp" %>

		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>