<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html>

<head>
    <title>Login | Choongang</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->

    <style>
        .container {
            float: left;
        }

        .btn {
            color: #F44336;
        }

        .marg-top100 {
            margin-top: 50px;
        }

        .py-5 {
            background-image: url(../../../../../ProjectUi/mydog.jpg);
            background-repeat: no-repeat;
        }

        .clear {
            clear: both;
        }

        footer>strong {
            color: #F44336;
            font-size: 18px;
        }

        .col-md-4>p>strong {
            color: #F44336;
        }
    </style>
</head>

<body>
    <div class="py-5">
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <p class="lead">
                            <strong>ChoongAng</strong>
                        </p>
                        <p>
                            <b>로그인 페이지</b>
                        </p>
                        <form id="login_form">
                            <div class="form-group">
                                <div class="marg-top100"></div>
                                <strong>아이디</strong>
                                <input type="text" class="form-control" placeholder="아이디를 입력하세요">
                                <small class="form-text text-muted">아이디가 노출되지 않게 주의하세요.</small>
                            </div>
                            <div class="form-group">
                                <strong>비밀번호</strong>
                                <input type="password" class="form-control" placeholder="비밀번호를 입력하세요">
                            </div>
                            <button type="submit" class="btn">로그인</button>
                            <div class="clear"></div>
                            <hr>
                            <small class="form-text text-muted">아이디 또는 비밀번호를 잊으셨습니까?</small>
                            <div class="clear"></div>
                            <a href="#">아이디 찾기</a> |
                            <a href="#">비밀번호 찾기</a>
                        </form>
                    </div>
                    <!--<div class="col-md-6"><img class="img-fluid d-block" src="../../../../../ProjectUi/mydog.jpg" width="350" height="350"></div>-->
                </div>
            </div>
            <hr>
        </div>

        <!--<footer><strong>ChoongAng</strong> Copyright : <B>ChoongAng institute.</B> AllRight Reserved</footer>-->

    </div>

</body>

</html>