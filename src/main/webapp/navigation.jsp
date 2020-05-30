<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-wdith", initial-scale="1">

    <link rel="stylesheet" href="${cp}/css/bootstrap.css">
    <link rel="stylesheet" href="${cp}/css/tave.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
                    <a href=" " class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">About<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${cp}/about/introTaveMembers">운영진 소개</a></li>
                        <li><a href="${cp}/about/sponsor">후원사</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Board<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${cp}/notice/list">공지</a></li>
                        <li><a href="${cp}/activity/activity">활동</a></li>
                        <li><a href="${cp}/attendance/attendance">출결 관리</a></li>
                        <li><a href="${cp}/progress">진행 상황</a></li>
                    </ul>
                </li>
                <li><a href="${cp}/recruit">Recruit<span class="sr-only"></span></a></li>
                <li><a href="${cp}/mail">Q&A<span class="sr-only"></span></a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <%
                    if(session.getAttribute("member")==null){
                //response.sendRedirect("member/LoginForm");
                %>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${cp}/member/loginForm">Sign In</a></li>
                    <li><a href="${cp}/member/joinForm">Sign Up</a></li>
                </ul>
                <%}

                    else{
                %>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${cp}/member/logoutForm">logout</a></li>
                    <li><a href="${cp}/member/myPage">mypage</a></li>
                </ul>
                <%}%>
            </ul>
        </div>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>