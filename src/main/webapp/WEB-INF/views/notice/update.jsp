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
<%@include file="/navigation.jsp"%>

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

<%@include file="/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>

</body>
</html>