<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">

	<title>후원사</title>

	<link href="${cp}/static/css/tave.css" rel="stylesheet" />
	<link href="${cp}/static/css/bootstrap.css" rel="stylesheet" />


	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
			font-size: 12px;
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
<%@include file="/navigation.jsp"%>

<br>

<div class="container">
	<div class="col-md-12 col-lg-6">
		<article class="post vt-post">
			<div id="sponsor1" aria-hidden="true">
				<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
					<div class="caption">
						<h3 class="md-heading">(주)노매드커넥션</h3>
						<p>
							2005년 설립된 <strong>AI-블록체인 기술 전문 기업</strong><br>
							데이터 분석 솔루션 <strong>'다빈치 플랫폼'</strong> 등 개발<br>
							맞춤형 엔터프라이즈 블록체인 솔루션 <strong>'엔-비즈체인'</strong> 개발<br>
							<strong>TAVE 회원 대상 기술 세미나 개최, 행사 지원 등 후원 진행</strong>
						</p>
					</div>
				</div>
			</div>
		</article>
	</div>
	<div class="col-md-12 col-lg-6">
		<article class="post vt-post">
			<div id="sponsor2" aria-hidden="true">
				<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
					<div class="caption">
						<h3 class="md-heading">(주)유비콤테크놀로지</h3>
						<p>
							2015년 설립된 응용 <strong>HW/SW 개발 전문 기업</strong><br>
							원전/항공/방산업 특수 제어 장비 개발<br>
							IoT 기능 탑재 계측기 HW/SW 등 제품 개발<br>
							<strong>TAVE 히원 참여 프로젝트 기회 제공, 물품 지원 등 후원 진행</strong>
						</p>
					</div>
				</div>
			</div>
		</article>
	</div>
</div>

<div class="container">
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" align="center">
		<img class="img-responsive" src="${cp}/images/sponsor/nomadConnection.png" alt="">
	</div>
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" align="center">
		<img class="img-responsive" src="${cp}/images/sponsor/ubicomTechnology.png" alt="">
	</div>
</div>

<%@include file="/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>jdbc:mysql://localhost:3306?serverTimezone=UTC
<script src="js/bootstrap.js"></script>
</body>
</html>