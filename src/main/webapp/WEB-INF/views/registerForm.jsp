<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-wdith", initial-scale="1">

		<title>Sign Up</title>

		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/tave.css">
		<link rel="stylesheet" href="css/form.css">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
		<nav class="navbar navbar-default">
		    <div class="container-fluid">
		    	<div class="navbar-header">
		      		<a class="navbar-brand js-scroll-trigger" href="index.html">TAVE</a>
		  		</div>
		  		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			        <ul class="nav navbar-nav">
			            <li class="dropdown">
			              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">About<span class="caret"></span></a>
			              <ul class="dropdown-menu">
			                <li><a href="introTaveMembers.html">운영진 소개</a></li>
			                <li><a href="sponsor.html">후원사</a></li>
			              </ul>
			            </li>
			            <li class="dropdown">
			              <a href="boardList.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Board<span class="caret"></span></a>
			              <ul class="dropdown-menu">
			                <li><a href="notice.html">공지</a></li>
			                <li><a href="activity.html">활동</a></li>
			                <li><a href="attendance.html">출결 관리</a></li>
			                <li><a href="progress.html">진행 상황</a></li>
			                <li><a href="review.html">활동 후기</a></li>
			              </ul>
			            </li>
			            <li><a href="recruit.html">Recruit<span class="sr-only"></span></a></li>
			            <li><a href="QandA.html">Q&A<span class="sr-only"></span></a></li>
			        </ul>
			        <ul class="nav navbar-nav navbar-right">
			        	<li><a href="loginForm.html">Sign In</a></li>
			        	<li><a href="registerForm.html">Sign Up</a></li>
			        </ul>
			    </div>
			</div>
		</nav>

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

		<!-- Footer -->
		<footer class="footer text-center">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 mb-5 mb-lg-0">
						<h4 class="text-uppercase mb-4">회장</h4>
						<p class="lead mb-0">박세일</p>
			        </div>

			        <div class="col-lg-4 mb-5 mb-lg-0">
			          <h4 class="text-uppercase mb-4">Social Network</h4>
			          <a class="btn btn-outline-light btn-social mx-1" href="https://www.facebook.com/TechnologywaAVE/">
			            <i class="fa fa-facebook-f"></i>
			          </a>
			          <a class="btn btn-outline-light btn-social mx-1" href="https://blog.naver.com/t-ave">
			            <i class="fa fa-edge"></i>
			          </a>
			        </div>

			        <div class="col-lg-4">
			          <h4 class="text-uppercase mb-4">TAVE</h4>
			          <p class="lead mb-0">Technology wAVE</p>
			        </div>
			    </div>
			</div>
		</footer>

		<!-- Copyright Section -->
		<section class="copyright py-4 text-center text-white">
			<div class="container">
				<small>Copyright &copy; TAVE</small>
			</div>
		</section>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>