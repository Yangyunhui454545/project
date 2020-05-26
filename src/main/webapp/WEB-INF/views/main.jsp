<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-wdith", initial-scale="1">

		<title>TAVE</title>

		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/tave.css">

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<style>
			h1 {
				color: #006699;
			}
			hr {
				border-color: #006699;
			}
			.hovereffect {
			  width: 100%;
			  height: 100%;
			  float: left;
			  overflow: hidden;
			  position: relative;
			  text-align: center;
			  cursor: default;
			}

			.hovereffect .overlay {
			  position: absolute;
			  overflow: hidden;
			  width: 80%;
			  height: 80%;
			  left: 10%;
			  top: 10%;
			  border-bottom: 1px solid #FFF;
			  border-top: 1px solid #FFF;
			  -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
			  transition: opacity 0.35s, transform 0.35s;
			  -webkit-transform: scale(0,1);
			  -ms-transform: scale(0,1);
			  transform: scale(0,1);
			}

			.hovereffect:hover .overlay {
			  opacity: 1;
			  filter: alpha(opacity=100);
			  -webkit-transform: scale(1);
			  -ms-transform: scale(1);
			  transform: scale(1);
			}

			.hovereffect img {
			  display: block;
			  position: relative;
			  -webkit-transition: all 0.35s;
			  transition: all 0.35s;
			}

			.hovereffect:hover img {
			  filter: url('data:image/svg+xml;charset=utf-8,<svg xmlns="http://www.w3.org/2000/svg"><filter id="filter"><feComponentTransfer color-interpolation-filters="sRGB"><feFuncR type="linear" slope="0.6" /><feFuncG type="linear" slope="0.6" /><feFuncB type="linear" slope="0.6" /></feComponentTransfer></filter></svg>#filter');
			  filter: brightness(0.6);
			  -webkit-filter: brightness(0.6);
			}

			.hovereffect h2 {
			  text-transform: uppercase;
			  text-align: center;
			  position: relative;
			  font-size: 17px;
			  background-color: transparent;
			  color: #FFF;
			  padding: 1em 0;
			  opacity: 0;
			  filter: alpha(opacity=0);
			  -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
			  transition: opacity 0.35s, transform 0.35s;
			  -webkit-transform: translate3d(0,-100%,0);
			  transform: translate3d(0,-100%,0);
			}

			.hovereffect a, .hovereffect p {
			  color: #FFF;
			  padding: 1em 0;
			  opacity: 0;
			  filter: alpha(opacity=0);
			  -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
			  transition: opacity 0.35s, transform 0.35s;
			  -webkit-transform: translate3d(0,100%,0);
			  transform: translate3d(0,100%,0);
			}

			.hovereffect:hover a, .hovereffect:hover p, .hovereffect:hover h2 {
			  opacity: 1;
			  filter: alpha(opacity=100);
			  -webkit-transform: translate3d(0,0,0);
			  transform: translate3d(0,0,0);
			}

			<!--activity-->
			.activity {
			  margin-bottom: -30px;
			}

			.activity .activity-item {
			  cursor: pointer;
			  position: relative;
			  display: block;
			  max-width: 25rem;
			  margin-bottom: 30px;
			  border-radius: 0.5rem;
			  overflow: hidden;
			}

			.activity .activity-item .activity-item-caption {
			  position: absolute;
			  top: 0;
			  left: 0;
			  transition: all 0.2s ease-in-out;
			  opacity: 0;
			  background-color: rgba(26, 188, 156, 0.9);
			}

			.activity .activity-item .activity-item-caption:hover {
			  opacity: 1;
			}

			.activity .activity-item .activity-item-caption .activity-item-caption-content {
			  font-size: 1.5rem;
			}

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
		<style type="text/css">
			.jumbotron {
				background-image: url('images/wave.jpeg');
				background-size: cover;
				text-shadow: black 0.2em 0.2em 0.2em;
				color: white;
			}
		</style>
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
			<div class="jumbotron">
				<br><br><br>
				<h1 class="text-center">TAVE</h1>
		        <p class="text-center">
		        <br>
				Technology wAVE의 약자로
				4차 산업혁명 기술들의 물결을 선도한다는 뜻을 가지고 있습니다.<br>
				파도처럼 몰아칠 4차 산업혁명에 무너지지 않고, 기술의 물결을 선도하는 동아리가 되고자 합니다.
				<br><br><br>
				</p>
			</div>
		</div>

		<div class="container">
				<h1 class="text-center">ACTIVITY</h1>
				<hr>

				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					    <div class="hovereffect">
					    	<div class="activity-item">
						        <img class="img-responsive" src="images/activity1.png" alt="">
						            <div class="overlay">
						                <h2>MT</h2>
						                <div>
						                	<a href="#activity1">
												<p>show more</p>
											</a>
										</div>
						            </div>
						       </div>
					    </div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					    <div class="hovereffect">
					    	<div class="activity-item">
						        <img class="img-responsive" src="images/activity2.png" alt="">
						            <div class="overlay">
						                <h2>세션/스터디/강연</h2>
										<div>
						                	<a href="#activity2">
												<p>show more</p>
											</a>
										</div>
						            </div>
						       </div>
					    </div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					    <div class="hovereffect">
					    	<div class="activity-item">
						        <img class="img-responsive" src="images/activity3.png" alt="">
						            <div class="overlay">
						                <h2>Conference</h2>
										<div>
						                	<a href="#activity3">
												<p>show more</p>
											</a>
										</div>
						            </div>
						       </div>
					    </div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					    <div class="hovereffect">
					    	<div class="activity-item">
						        <img class="img-responsive" src="images/activity4.png" alt="">
						            <div class="overlay">
						                <h2>친목활동</h2>
										<div>
						                	<a href="#activity4">
												<p>show more</p>
											</a>
										</div>
						            </div>
						       </div>
					    </div>
					</div>
				</div>	
			</div>

			<br>

			<div class="container">
		    <div class="col-md-12 col-lg-12">
		        <article class="post vt-post">
		        	<div id="activity1" aria-hidden="true">
		                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
		                    <div class="caption">
		                        <h3 class="md-heading">MT</h3>
		                        <p>해당 기수에 YB로 뽑힌 회원들과 희망하는 OB회원들과 함께 운영진들과의 첫 만남을 MT로 진행한다. 
			                	첫 만남인만큼 TAVE가 무엇을 하는 곳인지에 대한 소개와 간단한 운영진 자기소개 시간을 갖는다. 
			                	다양한 단체게임과 조끼리의 레크레이션을 통하여 서로를 알아간다.
			                	글 더 많아 보이는 척 해야되니깐 더 쓴척 하겠습니다. 랄랄랄라랄 그래도 아무도 모르니깐 아무도 안 읽을 듯. 
			                	같이 팀플하는 팀원들도 안볼듯 라랄ㄹ랄 나만 아는 비밀 
			                	이제 좀 글이 많아 보이려나 췌크췌크 마이크 췌크 원 투 쓰리
			                	</p>
		                    </div>
		                </div>
		            </div>
		        </article>
		        
		        <article class="post vt-post">
		        	<div id="activity2" aria-hidden="true">
		                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
		                    <div class="caption">
		                        <h3 class="md-heading">세션/스터디/강연</h3>
				                <p>매주 정기적인 세션에서 스터디와 프로젝트를 진행하며 실력을 쌓는다. 
				                세션은 상반기 하반기로 나뉘며 기수당 총 2번 나누어서 스터디와 프로젝트를 선택할 수 있다. 
				            	뿐만 아니라 원하는 스터디와 프로젝트가 있다면 직접 개설할 수 있다. 
				            	가끔은 외부 강사를 초청해 IT에 대한 강연을 진행하기도 한다.
				            	글 더 많아 보이는 척 해야되니깐 더 쓴척 하겠습니다. 랄랄랄라랄 그래도 아무도 모르니깐 아무도 안 읽을 듯. 
			                	같이 팀플하는 팀원들도 안볼듯 라랄ㄹ랄 나만 아는 비밀 
			                	이제 좀 글이 많아 보이려나 췌크췌크 마이크 췌크 원 투 쓰리	
				            	</p>
		                    </div>
		                </div>
		            </div>
		        </article>

		        <article class="post vt-post">
		        	<div id="activity3" aria-hidden="true">
		                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
		                    <div class="caption">
		                        <h3 class="md-heading">Conference</h3>
		                        <p>컨퍼런스를 통해 해당 기수 우수 프로젝트를 선정한다. 
				                각 팀에서 프로젝트에 대한 발표를 진행하고 회원들끼리 투표하여 우수팀을 선정한다. 
				                우수팀에게는 순위에 따라 상금도 제공된다.
				                글 더 많아 보이는 척 해야되니깐 더 쓴척 하겠습니다. 랄랄랄라랄 그래도 아무도 모르니깐 아무도 안 읽을 듯. 
			                	같이 팀플하는 팀원들도 안볼듯 라랄ㄹ랄 나만 아는 비밀 
			                	이제 좀 글이 많아 보이려나 췌크췌크 마이크 췌크 원 투 쓰리
				            	</p>
		                    </div>
		                </div>
		            </div>
		        </article>

		        <article class="post vt-post">
		        	<div id="activity4" aria-hidden="true">
		                <div class="col-xs-12 col-sm-7 col-md-7 col-lg-12">
		                    <div class="caption">
		                        <h3 class="md-heading">친목 활동</h3>
		                        <p>스터디나 프로젝트 뿐만 아니라 격주로 세션이 끝나고 뒷풀이를 진행한다. 
				                음주 뿐만 아니라 볼링, 보드게임, 소풍 등 다양한 친목활동이 이루어진다. 
				                부가적으로 멤버들이 번개를 열어 친목을 다지기도 한다.
				                글 더 많아 보이는 척 해야되니깐 더 쓴척 하겠습니다. 랄랄랄라랄 그래도 아무도 모르니깐 아무도 안 읽을 듯. 
			                	같이 팀플하는 팀원들도 안볼듯 라랄ㄹ랄 나만 아는 비밀 
			                	이제 좀 글이 많아 보이려나 췌크췌크 마이크 췌크 원 투 쓰리
				            	</p>
		                    </div>
		                </div>
		            </div>
		        </article>
		        <div class="clearfix"></div>
		    </div>
		</div>
			

			      <br>

		<div class="container">
			<h1 class="text-center">MEMBERS</h1>
			<hr>
			<a href="introTaveMembers.html">
			<img class="img-responsive center" src="images/taveMembers.png" alt="taveMembers" width="90%">
			</a>
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