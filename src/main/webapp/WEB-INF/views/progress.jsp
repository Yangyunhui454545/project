<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>

	<title>후원사</title>

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

<br>

<div class="container">
	<div class="col-md-12 col-lg-3">
		<article class="post vt-post">
			<a href="https://drive.google.com/drive/folders/12CLRjM89cvEssv3HsT-SQazIu1FiyBop">
				<div id="team1" aria-hidden="true">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
						<div class="caption">
							<h3 class="md-heading">1. 머신러닝 공모전 1팀</h3>
							<ul>
								<li>정유진</li>
								<li>박재영</li>
								<li>오창대</li>
								<li>박지웅</li>
								<li>이정연</li>
								<br>
							</ul>
						</div>
					</div>
				</div>
			</a>
		</article>
	</div>
	<div class="col-md-12 col-lg-3">
		<article class="post vt-post">
			<a href="https://drive.google.com/drive/folders/1DXXMU-Auxyqd9vES3MjTt6GvWx9ypRXd">
				<div id="team2" aria-hidden="true">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
						<div class="caption">
							<h3 class="md-heading">2. 머신러닝 공모전 2팀</h3>
							<ul>
								<li>민지웅</li>
								<li>박관용</li>
								<li>이재훈</li>
								<li>이정재</li>
								<li>정다정</li>
								<li>임영선</li>
							</ul>
						</div>
					</div>
				</div>
			</a>
		</article>
	</div>
	<div class="col-md-12 col-lg-3">
		<article class="post vt-post">
			<a href="https://drive.google.com/drive/folders/1MFxgI6DfI3H5AE4bH3D-q1CuD4Ihi3UV">
				<div id="team3" aria-hidden="true">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
						<div class="caption">
							<h3 class="md-heading">3. 머신러닝 공모전 3팀</h3>
							<ul>
								<li>김서경</li>
								<li>김은</li>
								<li>심소민</li>
								<li>원희지</li>
								<li>이문기</li>
								<br>
							</ul>
						</div>
					</div>
				</div>
			</a>
		</article>
	</div>
	<div class="col-md-12 col-lg-3">
		<article class="post vt-post">
			<a href="https://drive.google.com/drive/folders/12pVbXKWzFmWyggx8IAXASAtKts2alObu">
				<div id="team4" aria-hidden="true">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
						<div class="caption">
							<h3 class="md-heading">4. 머신러닝 공모전 4팀</h3>
							<ul>
								<li>강형곤</li>
								<li>송나은</li>
								<li>곽우찬</li>
								<br>
								<br>
								<br>
							</ul>
						</div>
					</div>
				</div>
			</a>
		</article>
	</div>
</div>

<div class="container">
	<div class="col-md-12 col-lg-3">
		<article class="post vt-post">
			<a href="https://drive.google.com/drive/folders/19hO6F7_Wm05OZguwVO7-mp2p0Jm6EL7A">
				<div id="team5" aria-hidden="true">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
						<div class="caption">
							<h3 class="md-heading">5. 파이썬 기반 공모전</h3>
							<ul>
								<li>박명진</li>
								<li>이승연</li>
								<li>오혜수</li>
								<li>장예은</li>
								<li>정서운</li>
								<br>
							</ul>
						</div>
					</div>
				</div>
			</a>
		</article>
	</div>
	<div class="col-md-12 col-lg-3">
		<article class="post vt-post">
			<a href=https://drive.google.com/drive/folders/1PTLqCuteNT1EuvV4l3czz2dpYcbF7lZP">
				<div id="team6" aria-hidden="true">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
						<div class="caption">
							<h3 class="md-heading">6. 코로나 데이터 프로젝트</h3>
							<ul>
								<li>김규리</li>
								<li>김지현</li>
								<li>오원진</li>
								<li>정혜지</li>
								<br>
								<br>
							</ul>
						</div>
					</div>
				</div>
			</a>
		</article>
	</div>
	<div class="col-md-12 col-lg-3">
		<article class="post vt-post">
			<a href="https://drive.google.com/drive/folders/1MFxgI6DfI3H5AE4bH3D-q1CuD4Ihi3UV">
				<div id="team7" aria-hidden="true">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
						<div class="caption">
							<h3 class="md-heading">7. R을 이용한 프로젝트</h3>
							<ul>
								<li>권희은</li>
								<li>김다은</li>
								<li>김인준</li>
								<li>김현지</li>
								<br>
								<br>
							</ul>
						</div>
					</div>
				</div>
			</a>
		</article>
	</div>
	<div class="col-md-12 col-lg-3">
		<article class="post vt-post">
			<a href="https://drive.google.com/drive/folders/11oqM9YfKxeMIaozEz6jCZwCd4w-Spb43">
				<div id="team8" aria-hidden="true">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
						<div class="caption">
							<h3 class="md-heading">8. 스프링 프로젝트 1팀</h3>
							<ul>
								<li>양윤희</li>
								<li>최인아</li>
								<li>심세영</li>
								<li>윤예린</li>
								<br>
								<br>
							</ul>
						</div>
					</div>
				</div>
			</a>
		</article>
	</div>
</div>

<br>
<%@ include file="/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
</div>
</div>
</div>
</body>
</html>