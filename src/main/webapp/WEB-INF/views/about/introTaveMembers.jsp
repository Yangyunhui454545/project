<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-wdith", initial-scale="1">

		<title>운영진 소개</title>

		<link rel="stylesheet" href="${cp}/css/bootstrap.css">
		<link rel="stylesheet" href="${cp}/css/tave.css">

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
		<%@ include file=navigation.jsp" %>

		<div class="container">
		    <div class="col-md-12 col-lg-12">
		        <article class="post vt-post">
		            <div class="row">
		                <div class="col-xs-12 col-sm-5 col-md-5 col-lg-2">
		                    <div class="post-type post-img">
		                        <a href="#"><img src="${cp}/images/avatar.png" class="img-responsive" alt="image post"></a>
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
		                        <p>대학정보보호동아리연합회(KUCIS : Korea University Clubs Information Security)는 한국인터넷진흥원(구 한국정보보호진흥원)에서 주관하는 ‘대학정보보호동아리 지원사업’에 참여하는 대한민국 대학(교)의 정보보호 및 컴퓨터 보안 동아리의 모임이자 대한민국의 해커그룹이다.</p>
		                    </div>
		                </div>
		            </div>
		        </article>
		        
		        
		        
		        <article class="post vt-post">
		            <div class="row">
		                <div class="col-xs-12 col-sm-5 col-md-5 col-lg-2">
		                    <div class="post-type post-img">
		                        <a href="#"><img src="${cp}/images/avatar.png" class="img-responsive" alt="image post"></a>
		                    </div>
		                    <div class="author-info author-info-2">
		                        <ul class="list-inline">
		                            <li>
		                                <div class="info">
		                                    <strong>쫄병</strong></div>
		                            </li>
		                            <li>
		                                <div class="info">
		                                    <strong>앙버터</strong></div>
		                            </li>
		                        </ul>
		                    </div>
		                </div>
		                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-10">
		                    <div class="caption">
		                        <h3 class="md-heading">전 딱갈이</h3>
		                        <p>
2000년 한국정보보호진흥원의 대학정보보호동아리 지원사업의 시작과 함께 결성되었으며, 3개년 지원 계획에 따라 2003년에 종료되었다. 이후, 대학 정보보호 인력의 올바른 정보보호 마인드를 배양하고, 우수한 정보보호 인력양성을 위해 2006년을 기점으로 다시 지원사업이 재개되었다. </p>
		                    </div>
		                </div>
		            </div>
		        </article>
		        
		        <article class="post vt-post">
		            <div class="row">
		                <div class="col-xs-12 col-sm-5 col-md-5 col-lg-2">
		                    <div class="post-type post-img">
		                        <a href="#"><img src="${cp}/images/avatar.png" class="img-responsive" alt="image post"></a>
		                    </div>
		                    <div class="author-info author-info-2">
		                        <ul class="list-inline">
		                            <li>
		                                <div class="info">
		                                    <strong>찡끗</strong></div>
		                            </li>
		                            <li>
		                                <div class="info">
		                                    <strong>최인아</strong></div>
		                            </li>
		                        </ul>
		                    </div>
		                </div>
		                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-10">
		                    <div class="caption">
		                        <h3 class="md-heading">난 잉아링</h3>
		                        <p> 본 사업은 전문성 강화를 위한 교육, 세미나, 워크샵 개최 [1] 및 경진대회를 통한 우수 동아리 해외 컨퍼런스 참가기회 부여, 정보화 소외계층을 대상으로 한 봉사활동[2][3] 등의 활동을 하고 있으며, 매년 40개 내외의 대학 동아리(해커그룹)가 ‘대학정보보호동아리 지원사업’에 선정되어 [4] 활동하고 있다. 매년 활동 실적을 평가하여 활동 실적이 우수한 동아리(해커그룹)는 시상 [5] 을 한다..</p>
		                    </div>
		                </div>
		            </div>
		        </article>
		        <article class="post vt-post">
		            <div class="row">
		                <div class="col-xs-12 col-sm-5 col-md-5 col-lg-2">
		                    <div class="post-type post-img">
		                        <a href="#"><img src="${cp}/images/avatar.png" class="img-responsive" alt="image post"></a>
		                    </div>
		                    <div class="author-info author-info-2">
		                        <ul class="list-inline">
		                            <li>
		                                <div class="info">
		                                    <strong>껄껄</strong></div>
		                            </li>
		                            <li>
		                                <div class="info">
		                                    <strong>세영</strong></div>
		                            </li>
		                        </ul>
		                    </div>
		                </div>
		                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-10">
		                    <div class="caption">
		                        <h3 class="md-heading">난 세영링</h3>
		                        <p> 본 사업은 전문성 강화를 위한 교육, 세미나, 워크샵 개최 [1] 및 경진대회를 통한 우수 동아리 해외 컨퍼런스 참가기회 부여, 정보화 소외계층을 대상으로 한 봉사활동[2][3] 등의 활동을 하고 있으며, 매년 40개 내외의 대학 동아리(해커그룹)가 ‘대학정보보호동아리 지원사업’에 선정되어 [4] 활동하고 있다. 매년 활동 실적을 평가하여 활동 실적이 우수한 동아리(해커그룹)는 시상 [5] 을 한다..</p>
		                    </div>
		                </div>
		            </div>
		        </article>
		        <div class="clearfix"></div>
		    </div>
		</div>
		
		<%@ include file=footer.jsp" %>

		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>