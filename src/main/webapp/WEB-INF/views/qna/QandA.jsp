<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" initial-scale="1">

<!-- 스타일시트 참조  -->

		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/tave.css">
		<link rel="stylesheet" href="css/board.css">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Q&A</title>
	</head>

	<body>

<!--
	<%

		//로긴한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값

		String userID = null;

		if (session.getAttribute("userID") != null) {

			userID = (String) session.getAttribute("userID");



		}

	%>
-->
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
				<table class="table table-striped">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>

							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<td><%=list.get(i).getBbsID()%></td>

							<td><a href="viewQandA.html?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle()%></a></td>

							<td><%=list.get(i).getUserID()%></td>

							<td><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"

							+ list.get(i).getBbsDate().substring(14, 16) + "분"%></td>

						</tr>
						<%

							}

						%>
					</tbody>
				</table>
				<a href="writeQandA.html?bbsID=<%= bbsID %>" class="btn btn-primary">질문하기</a>
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