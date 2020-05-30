<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>

	<title>운영진 소개</title>

	<link href="${cp}/css/tave.css" rel="stylesheet" />
	<link href="${cp}/css/bootstrap.css" rel="stylesheet" />
	<meta charset="UTF-8">

	<style>
		.content {
			padding: 35px 0px;
		}
		.post {
			width: 90%;
			float: left;
			-webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.4);
			-moz-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.4);
			box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.4);
			background: #fff;
			margin-bottom: 40px;
			border-radius: 3px;
		}
		.feature-post .thumbnail .author-info {
			padding: 20px 5px 20px 40px;
			text-align: left;
			min-height: 80px;
			background: #2c3840;
			float: left;
			width: 100%;
		}
		.post .post-type {
			float: left;
			width: 100%;
		}
		.post iframe {
			padding: 0px;
			margin: 0px;
		}
		.post .mejs-container {
			border-radius: 3px 3px 0px 0px;
			width: 100% !important;
		}
		.post .post-video {
			border-radius: 3px 3px 0px 0px;
		}
		.post .post-video iframe {
			width: 100%;
		}
		.post .post-video video {
			border-radius: 3px 3px 0px 0px;
		}
		.post a img {
			-webkit-transition: all 0.2s ease-in-out;
			-moz-transition: all 0.2s ease-in-out;
			-o-transition: all 0.2s ease-in-out;
			transition: all 0.2s ease-in-out;
			width: 100%;
			height: auto;
			display: block;
			min-height: 160px;
		}
		.post a {
			float: left;
			width: 100%;
			display: block;
		}
		.post .post-audio {
			height: auto;
		}
		.post .post-audio ._SMB-widget {
			width: 100%;
		}
		.post .post-quote blockquote {
			text-align: center;
			margin: 0px;
			padding: 25px 15px;
		}
		.post .post-quote blockquote h3 {
			color: #e74c3c;
			font-size: 36px;
			margin: 0px 0px 10px 0px;
		}
		.post .post-quote blockquote p {
			color: #333;
			font-size: 24px;
			font-weight: 300;
		}
		.post .post-img a {
			display: block;
		}
		.post .post-img a img {
			-webkit-transition: all 0.5s ease-in-out;
			-moz-transition: all 0.5s ease-in-out;
			-o-transition: all 0.5s ease-in-out;
			transition: all 0.5s ease-in-out;
			width: 100%;
			height: auto;
			border-radius: 3px 3px 0px 0px;
		}
		.post .caption {
			padding: 55px 45px 0px 45px;
		}
		.post .caption {
			float: left;
			width: 100%;
			text-align: left;
			padding: 25px 25px;
		}
		.post .caption h3 {
			margin: 0px 0px 20px 0px;
			color: #36a0e7;
			font-weight: 300;
			font-size: 34px;
			line-height: 42px;
		}
		.post .caption p {
			line-height: 28px;
			margin-bottom: 20px;
			font-size: 16px;
		}
		.post .author-info {
			padding: 15px 15px 15px 15px;
			text-align: left;
			min-height: 60px;
			border-bottom: 1px solid #ddd;
			background: #fcfcfc;
			float: left;
			width: 100%;
		}
		.post .author-info .list-inline {
			margin: 0px;
		}
		.post .author-info ul li:first-child {
			border-left: none;
			padding-left: 0px;
		}
		.post .author-info ul li {
			float: left;
			border-left: 1px solid #ddd;
			padding-left: 20px;
			padding-right: 20px;
		}
		.post .author-info ul li p {
			line-height: 16px;
			color: #3b4952;
			font-weight: 300;
			font-size: 14px;
			margin: 0px;
		}
		.post .author-info ul li strong {
			color: #3b4952;
		}
		.post .author-info ul li a {
			color: #3b4952;
			font-weight: 700;
			font-size: 16px;
			line-height: 20px;
		}
		.post .author-info ul li a:hover {
			color: #e74c3c;
			text-decoration: none;
		}
		.post .author-info ul li .icon-box {
			margin-right: 15px;
			width: 36px;
			text-align: center;
			line-height: 36px;
			font-size: 30px;
			height: 36px;
			float: left;
			background: transparent;
			color: #aebbc5;
		}
		.post .author-info ul li .icon-box img {
			border-radius: 3px;
			width: 100%;
		}
		.post .author-info ul li .info {
			float: left;
		}
		.post .author-info.author-info-2 ul li:first-child {
			border-left: none;
			padding-left: 0px;
		}
		.post .author-info.author-info-2 ul li .icon-box {
			font-size: 28px;
		}
		.post {
			float: left;
			width: 100%;
			text-align: left;
			margin-bottom: 20px;
		}
		.post a {
			margin: 0px;
			font-size: 18px;
			font-weight: 300;
			color: #3b4952;
		}
		.post span {
			width: 12px;
			height: 12px;
			display: inline-block;
			background: #3b4952;
			vertical-align: middle;
			margin-right: 10px;
		}
		.post a:hover span {
			background: #e74c3c;
			color: #e74c3c;
		}
		.post a:hover {
			color: #e74c3c;
		}
		.img-grid {
			float: left;
			margin-bottom: 40px;
		}
		.img-grid li {
			margin: 0px;
			float: left;
		}
		.post .caption h5 {
			text-decoration: underline;
			margin: 0px 0px 20px 0px;
			color: #3b4952;
			font-weight: 300;
			font-size: 24px;
			line-height: 30px;
		}
		.post .list-unstyled {
			margin-bottom: 40px;
		}
		.post .list-unstyled li {
			font-size: 16px;
			line-height: 28px;
			font-weight: 500;
			color: #49545b;
		}
		.post .list-unstyled li i {
			color: #a0b9ca;
			margin-right: 15px;
		}
		blockquote {
			background: #f2f6f8;
			border: 1px solid #e5e5e5;
			line-height: 28px;
			margin-bottom: 40px;
			font-size: 16px;
			font-weight: 500;
			color: #49545b;
		}
		.line-block {
			padding: 20px 45px;
			border-top: 1px solid #eef3f6;
			border-bottom: 1px solid #eef3f6;
			float: left;
			width: 100%;
		}
		.post .line-block .tags {
			margin-bottom: 0px;
		}
		.vt-post.post .author-info ul li {
			padding-left: 15px;
			padding-right: 15px;
			float: none;
		}
		.vt-post.post .author-info {
			border-radius: 0px 0px 0px 3px;
			border-bottom: none;
			border-right: 1px solid #ddd;
			padding: 15px 12px 15px 12px;
		}
		.vt-post.post .post-img a img {
			border-radius: 3px 0px 0px 0px;
		}
		.vt-post.post .caption {
			padding: 25px 0px;
		}
		.post .caption h3 {
			margin: 0px 0px 20px 0px;
			color: #36a0e7;
			font-weight: 300;
			font-size: 34px;
			line-height: 42px;
		}
		.md-heading {
			font-size: 24px !important;
			line-height: 36px !important;
			margin-bottom: 15px !important;
		}
	</style>
</head>
<body>

<%@ include file="/navigation.jsp" %>
<div class="container">
	<div class="col-md-12 col-lg-12">
		<article class="post vt-post">
			<div class="row">
				<div class="col-xs-12 col-sm-5 col-md-5 col-lg-2">
					<div class="post-type post-img">
						<a href="#"><img src="${cp}/images/members/park.png" class="img-responsive" alt="image post"></a>
					</div>
					<div class="author-info author-info-2">
						<ul class="list-inline">
							<li>
								<div class="info">
									<strong>회장</strong></div>
							</li>
							<li>
								<div class="info">
									<strong>박세일</strong></div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-7 col-md-7 col-lg-10">
					<div class="caption">
						<h3 class="md-heading">TAVE에 오신걸 환영합니다</h3>
						<p>같은 목표를 가진 다재다능한 사람들이 모여 혼자 하기 어려운 프로젝트를 한다면 완성도 높은 결과물을 이끌어 낼 수 있습니다. <br>제가 단언컨대 처음 TAVE를 시작했을 때와 달라진 자신을 만날 수 있을 것입니다.<br> 함께 미래를 그려가는 TAVE, 4차 산업혁명을 대비할 회원들을 모집합니다.</p>
					</div>
				</div>
			</div>
		</article>



		<article class="post vt-post">
			<div class="row">
				<div class="col-xs-12 col-sm-5 col-md-5 col-lg-2">
					<div class="post-type post-img">
						<a href="#"><img src="${cp}/images/members/lee.png" class="img-responsive" alt="image post"></a>
					</div>
					<div class="author-info author-info-2">
						<ul class="list-inline">
							<li>
								<div class="info">
									<strong>기술처</strong></div>
							</li>
							<li>
								<div class="info">
									<strong>이문기</strong></div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-7 col-md-7 col-lg-10">
					<div class="caption">
						<h3 class="md-heading">기술처</h3>
						<p> 각 담당자들은 유기적으로 업무 내용을 공유하며 추진함에 문제가 없도록 한다.<br>
							IT 흐름에 맞게 각종 스터디 관리를 및 운영 업무를 수행한다. <br>
							뿐만 아니라 다양한 프로젝트도 찾아 동아리원들에게 공유하기도 한다. <br>
							컨퍼런스 진행 시 프로젝트 발표 시 체점 기준을 정하고 이에 맞는 순위를 정한다. </p>
					</div>
				</div>
			</div>
		</article>

		<article class="post vt-post">
			<div class="row">
				<div class="col-xs-12 col-sm-5 col-md-5 col-lg-2">
					<div class="post-type post-img">
						<a href="#"><img src="${cp}/images/members/kim.png" class="img-responsive" alt="image post"></a>
					</div>
					<div class="author-info author-info-2">
						<ul class="list-inline">
							<li>
								<div class="info">
									<strong>경영처</strong></div>
							</li>
							<li>
								<div class="info">
									<strong>김서경</strong></div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-7 col-md-7 col-lg-10">
					<div class="caption">
						<h3 class="md-heading">경영처</h3>
						<p> 본 처에는 회계, 인사, 기획, 홍보 등의 담당자들이 있다. <br>
							각 담당자들은 유기적으로 업무 내용을 공유하며 추진함에 문제가 없도록 한다. <br>
							회계에서는 정확하게 금전적인 부분에 대해서 나누고 동아리원들에게 알려준다. <br>
							홍보에서는 동이리에서 새로운 기수를 모집할 때나 동아리에서 활동을 할 때 블로그에 글을 작성하는 등 테이브를 알리기 위해 노력한다. </p>
					</div>
				</div>
			</div>
		</article>

		<div class="clearfix"></div>
	</div>
</div>

<%@ include file="/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
</div>
</div>
</div>
</body>
</html>