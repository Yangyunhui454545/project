<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>

    <link href="${cp}/css/tave.css" rel="stylesheet" />
    <link href="${cp}/css/bootstrap.css" rel="stylesheet" />
    <meta charset="UTF-8">

</head>
<body>

<%@ include file="/navigation.jsp" %>

<div class="row">
    <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
        <thead>
        <tr>
            <th style="background-color: #eeeeee; text-align: center;">번호</th>
            <th style="background-color: #eeeeee; text-align: center;">제목</th>

            <th style="background-color: #eeeeee; text-align: center;">작성자</th>
            <th style="background-color: #eeeeee; text-align: center;">작성일</th>
        </tr>
        </thead>

        <tbody>
        <!-- CONTENTS !-->
        <c:forEach var="board" items="${boardList}">

        <tr>
            <td>
                 ${board.id}
            </td>

            <td>
                <a href = "${cp}/detail/${board.id}"> ${board.title}</a>

            </td>
            <td>
                    ${board.writer}
            </td>

            <td>
               ${board.createdDate}"
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    <a  href="${cp}/write" class="btn btn-primary">글쓰기</a>

    <div>
        [[[[
    <c:forEach var= "pageNum" items = "${pageList}">
        <a href="@{'/?page=' + ${pageNum}}" style="color: black">${pageNum}</a>
    </c:forEach>
        ]]
    </div>
    <div class="container">

    </div>

    <%@ include file="/footer.jsp" %>

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
</div>
</div>
</div>
</body>
</html>