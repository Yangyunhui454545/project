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
		<nav class="navbar navbar-default">
		    <div class="container-fluid">
		    	<div class="navbar-header">
		      		<a class="navbar-brand js-scroll-trigger" href="${cp}/">TAVE</a>
		  		</div>
		  		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			        <ul class="nav navbar-nav">
			            <li class="dropdown">
			              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">About<span class="caret"></span></a>
			              <ul class="dropdown-menu">
			                <li><a href="introTave.html">TAVE 소개</a></li>
			                <li><a href="introActivity.html">Activity 소개</a></li>
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
			                <li><a href="progress.html">진행 사항</a></li>
			                <li><a href="review.html">활동 후기</a></li>
			              </ul>
			            </li>
			            <li><a href="recruit.html">Recruit<span class="sr-only"></span></a></li>
			            <li><a href="QandA.html">Q&A<span class="sr-only"></span></a></li>
			        </ul>
			        <ul class="nav navbar-nav navbar-right">
			        	<li><a href="${cp}/loginForm">Sign In</a></li>
			        	<li><a href="${cp}/joinForm">Sign Up</a></li>
			        </ul>
			    </div>
			</div>
		</nav>

		<form:form action="/joinForm" method="post" modelAttribute="member">
		<div class="container">
    	<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="col-lg-12">
						<h2>TAVE 회원 가입</h2>
							<label>
								<p class="label-txt">이름</p>
								<form:input type="text" class="input" path="memId"/>
								<!--  <input type="text" class="input" id="name">-->
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
							<label>
								<p class="label-txt">비밀번호 확인</p>
								<input type="password" class="input" id="passwordCheck">
								<div class="line-box">
									<div class="line"></div>
								</div>
							</label>
							<label>
								<p class="label-txt">- 없이 휴대폰 번호</p>
								<form:input type="text" class="input" path="Phone"/>
								<div class="line-box">
									<div class="line"></div>
								</div>
							</label>
							<label>
								<p class="label-txt">기수</p>
								<form:input type ="int" class="input" path="num" />
								<!--  <input type="text" class="input" id="num">-->
								<div class="line-box">
									<div class="line"></div>
								</div>
							</label>
							<label>
								<input type="radio"  name="chk_info" value="운영진">운영진 &nbsp;
								<input type="radio"  name="chk_info" value="OB">OB &nbsp;
								 <input type="radio" name="chk_info" value="YB">YB &nbsp;
							</label>
							<button type="submit">제출</button>
					</div>
				</div>
			</div>
		</div>
		</form:form>
		
		<!-- Footer -->
		<footer class="footer text-center">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 mb-5 mb-lg-0">
						<h4 class="text-uppercase mb-4">대표</h4>
						<p class="lead mb-0">앙버터
			            <br>풉 킥</p>
			        </div>

			        <div class="col-lg-4 mb-5 mb-lg-0">
			          <h4 class="text-uppercase mb-4">Social Network</h4>
			          <a class="btn btn-outline-light btn-social mx-1" href="https://www.facebook.com/TechnologywaAVE/">
			            <i class="fab fa-fw fa-facebook-f"></i>
			          </a>
			          <a class="btn btn-outline-light btn-social mx-1" href="https://blog.naver.com/t-ave">
			            <i class="fab fa-fw fa-twitter"></i>
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
		<script src="../../../../resources/static/js/bootstrap.js"></script>
	</body>
</html>