<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"
	integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns"
	crossorigin="anonymous">

<link href="${contextPath }/assets/auth/css/signUp.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"
	integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns"
	crossorigin="anonymous" />
	
<title>Join|Choongang</title>
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
							<b>회원가입 페이지</b>
						</p>
						<form id="joinmember_form" method="POST">
							<div class="form-group">
								<strong>아이디</strong> <input type="text" class="form-control"
									placeholder="아이디" name="user_id" id="user_id"> <small
									class="form-text text-muted">아이디가 노출되지 않게 주의하세요.</small>
							</div>
							<div class="form-group">
								<strong>비밀번호</strong> <input type="password"
									class="form-control" placeholder="비밀번호" name="user_password"
									id="user_password">
							</div>
							<div class="form-group">
								<strong>비밀번호 확인</strong> <input type="password"
									class="form-control" placeholder="비밀번호 확인"
									name="user_check_password" id="user_check_password">
							</div>
							<div id="check_pw_warning"></div>
							<div class="form-group">
								<strong>이메일</strong> <input type="email" class="form-control"
									placeholder="이메일을 입력하세요" name="user_email" id="user_email">
							</div>
							<div class="form-group">
								<strong>이름</strong> <input type="text" class="form-control"
									placeholder="이름을 입력하세요" name="user_name" id="user_name">
							</div>
							<div class="form-group">
								<input type="radio" id="user_role" name="user_role"
									value="student">학생 <i class="fas fa-user-graduate"></i>
								<input type="radio" id="user_role" name="user_role"
									value="teacher">강사 <i class="fas fa-chalkboard-teacher"></i>
							</div>
						</form>
						<button class="btn" onclick="f_checkValues()">회원가입</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${contextPath}/assets/auth/js/signUp.js"></script>
</body>

</html>