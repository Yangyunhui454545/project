<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <link href="${cp}/static/css/tave.css" rel="stylesheet" />
    <link href="${cp}/static/css/bootstrap.css" rel="stylesheet" />
    <meta charset="UTF-8">

</head>
<body>
<%@include file="/navigation.jsp"%>

    <div class="container">
        <div class="row" style="white-space:pre;">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                <thead>
                <tr>
                    <th colspan="3" style="background-color: #eeeeee; text-align: center; font-size: 25px; font-style: bold;"> ${boardDto.title}</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td style="width: 50%;"></td>
                    <td align="right" style="width: 40%;"> ${boardDto.writer}</td>
                    <td>${boardDto.createdDate}"></td>
                </tr>
                <tr>
                    <td colspan="3" style="min-height: 200px; text-align: left; padding: 70px 60px; font-size: 20px;">${boardDto.content}</td>
                </tr>
                <tr>
                    <td colspan="3" style="min-height:200px; text-align:left"></td>
                </tr>
                </tbody>
            </table>

            <!-- 수정/삭제 -->

            <a href="${cp}/update/${boardDto.id}" class="btn btn-primary">수정</a>  <a href="" class="btn btn-primary">삭제</a>
        </div>
    </div>
    <br>
</div>
<%@include file="/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
</div>
</div>
</div>
</body>
</html>