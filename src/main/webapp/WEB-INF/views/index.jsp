<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %> <%--ContextPath 선언 --%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-wdith", initial-scale="1">
		
		<title>Tave~!</title>

		<link rel="stylesheet" type ="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type ="text/css" href="css/tave.css">
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
			                <li><a href="http://www.naver.com">기본 소개</a></li>
			                <li><a href="../../html/introActivity.html">Activity 소개</a></li>
			                <li><a href="../../introTaveMembers.html">인물 소개</a></li>
			                <li><a href="../../sponsor.html">후원사</a></li>
			              </ul>
			            </li>
			            <li class="dropdown">
			              <a href="boardList.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Board<span class="caret"></span></a>
			              <ul class="dropdown-menu">
			                <li><a href="<%=cp%>/../../html/notice.html">공지</a></li>
			                <li><a href="activity.html">활동</a></li>
			                <li><a href="attendance.html">출결 관리</a></li>
			                <li><a href="progress.html">진행 사항</a></li>
			                <li><a href="review.html">활동 후기~!~!</a></li>
			              </ul>
			            </li>
			            <li><a href="loginForm.jsp">Recruit<span class="sr-only"></span></a></li>
			            <li><a href="QandA.html">Q&A<span class="sr-only"></span></a></li>
			        </ul>
			        <ul class="nav navbar-nav navbar-right">
			        	<li><a href="${cp}/loginForm">Sign In</a></li>
			        	<li><a href="${cp}/joinForm">Sign Up</a></li>
			        </ul>
			    </div>
			</div>
		</nav>

		<div class="container">
			
		</div>

		<!-- Footer -->
		<footer class="footer text-center">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 mb-5 mb-lg-0">
						<h4 class="text-uppercase mb-4">대표이사</h4>
						<p class="lead mb-0">앙버터~!~!
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
		<script src="../js/bootstrap.js"></script>
	</body>
</html>