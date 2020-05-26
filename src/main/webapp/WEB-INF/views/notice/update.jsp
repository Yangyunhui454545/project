<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <link href="${cp}/static/css/tave.css" rel="stylesheet" />
    <link href="${cp}/static/css/bootstrap.css" rel="stylesheet" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-wdith", initial-scale="1">

</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand js-scroll-trigger" href="index">TAVE</a>
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
                        <li><a href="progress.html">진행 사항</a></li>
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
        <form  action="${cp}/update/${boardDto.id}" method="post">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                <input type="hidden" name="_method" value="put"/>
                <input type="hidden" name="id" th:value="${boardDto.id}"/>
                <thead>
                <tr>
                    <th colspan="2" style="background-color: #eeeeee; text-align: center;">수정하기</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="text" class="form-control" value="${boardDto.title}" name="title" maxlength="50"/></td>
                </tr>
                <tr>
                    <td><input type="text" class="form-control" value="${boardDto.writer}" name="writer" maxlength="50"/></td>
                </tr>
                <tr>
                    <td><textarea class="form-control" text="${boardDto.content}" name="content" maxlength="2048" style="height: 350px;"></textarea></td>
                </tr>
                </tbody>
            </table>
            <input type="submit" class="btn btn-primary pull-right" value="수정" />
        </form>
    </div>
</div>

<!-- Footer -->
<footer class="footer text-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">대표</h4>
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