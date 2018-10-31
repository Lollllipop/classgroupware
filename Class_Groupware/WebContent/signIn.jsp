<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html>

<head>
    <title>Login | Choongang</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->

    <style>
        .marg-top100 {
            margin-top: 50px;
        }

        footer>strong {
            color: #F44336;
            font-size: 18px;
        }

        .col-md-4>p>strong {
            color: #F44336;
        }
    </style>
    
    <script>
	  function showEmailPopup() { 
		window.open("check_email_popup.jsp", "a", "width=400, height=150, left=200, top=200"); 
	  }
	  
	  function showIdPopup() {
		window.open("check_id_popup.jsp", "a", "width=400, height=150, left=200, top=200");   
	  }
	</script>
</head>

<body>
    <div class="container">
        <div class="row justify-content-md-center" style="margin: 7% auto; width: 350px;">
            <div class="col">
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
                    <div class="form-check mb-2 mr-sm-2">
				    	<input class="form-check-input" type="checkbox" id="inlineFormCheck">
				    	<label class="form-check-label" for="inlineFormCheck">
				      	Remember me
				    	</label>
				  	</div>
                    <button type="submit" class="btn btn-primary mb-2">로그인</button>
                    <div class="clear"></div>
                    <hr>
                    <small class="form-text text-muted">아이디 또는 비밀번호를 잊으셨습니까?</small>
                    <div class="clear"></div>
                    <a href="#" data-toggle="modal" data-target="#exampleModal" onclick="showEmailPopup()">아이디 찾기</a> |
                    <a href="#" onclick="showIdPopup()">비밀번호 찾기</a>
                </form>
            </div>
        </div>
    </div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
</body>
</html>