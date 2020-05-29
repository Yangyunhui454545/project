<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>


    <link href="${cp}/css/tave.css" rel="stylesheet" />
    <link href="${cp}/css/bootstrap.css" rel="stylesheet" />
    <link href="${cp}/css/board.css" rel="stylesheet" />

    <meta charset="UTF-8">
</head>
<body>

<%@ include file="/navigation.jsp" %>

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
            <!-- CONTENTS !-->
            <c:forEach var="board" items="${boardList}">

                <tr>
                    <td> ${board.id} </td>
                    <td> <a href = "${cp}/detail/${board.id}"  style = "color: black"> ${board.title}</a> </td>
                    <td> ${board.writer} </td>
                    <td > ${board.createdDate} </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <a  href="${cp}/write" class="btn btn-primary">글쓰기</a>

        <div>
            [[
            <c:forEach var= "pageNum" items = "${pageList}">
                <a href="@{'/?page=' + ${pageNum}}" style="color: black">${pageNum}</a>
            </c:forEach>
            ]]
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>

</body>
</html>