<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Class Groupware</title>
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link rel="stylesheet" href="${contextPath}/assets/materialize/css/materialize.min.css" media="screen,projection" />
    <!-- Bootstrap Styles-->
    <link href="${contextPath}/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${contextPath}/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${contextPath}/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${contextPath}/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="${contextPath}/assets/js/Lightweight-Chart/cssCharts.css" rel="stylesheet" >
    
    <%-- 여기에 css등 링크 작성!! --%>
     <style>
.clear {
	clear: both;
}

footer>strong {
	color: #F44336;
	font-size: 18px;
}

.stuAllTextArea {
	float: left;
	margin-left: 20px;
}

.selectReadCountArea {
	float: left;
}

.selectReadCountSelect {
	float: left;
}

.selectReadCountText {
	margin-top: 10px;
	float: left;
}

.writebtnArea {
	float: right;
}

.writebtnArea>button {
	background-color: #F44336;
}

.pagination {
	margin-left: auto;
	margin-right: auto;
}

.selectSearchValue {
	margin-top: 10px;
	float: left;
}

.search_icon {
	margin-top: 10px;
	float: right;
}

.search_area_form_input {
	float: right;
}

.searcharea {
	margin-top: 30px;
	margin-right: 30px;
	float: right;
}

.card-action {
	float: left;
}

.btn {
	float: right;
	margin-right: 10px;
}
td, th{
width:200px;
word-break:break-all;
}

</style>
</head>
<body>
   <div id="wrapper">
      <%@ include file="/WEB-INF/view/include/nav_top.jsp" %>
      <%@ include file="/WEB-INF/view/include/nav_side.jsp" %>

      <div id="page-wrapper">
         <div class="header">
            <h1 class="page-header">수강 학생 목록</h1>
         </div>
         <div id="page-inner">
         
            <%-- 여기에 코드 작성!! --%>
            <div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-action">
								<strong>수강 신청 학생 목록</strong>
							</div>
							<div class="searcharea">
								<form class="form-inline d-flex justify-content-center">

									<div class="selectSearchValue">
										<select class="form-control input-sm" name="selectReadCount">
											<option value="이름" selected="selected">이름순</option>
											<option value="이메일">이메일순</option>
											<option value="가입일">가입일순</option>
										</select>
									</div>

									<div class="search_area_form_input"></div>
								</form>
							</div>
							<div class="clear"></div>
							<div class="card-content">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>이름</th>
												<th>이메일</th>
												<th>가입일</th>
												<th></th>
											</tr>
										</thead>
										<tbody>

											<tr>
												<td>우지현</td>
												<td>wooji@gmail.com</td>
												<td>2018.10.26</td>
												<td><button class="btn">승인</button>
													<button class="btn">거절</button></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="clear"></div>
						<div class="card">
							<div class="stuAllTextArea">
							<br>
								<strong>수강 학생 목록</strong>
							</div>
							<div class="searcharea">
								<form class="form-inline d-flex justify-content-center">

									<div class="selectSearchValue">
										<select class="form-control input-sm" name="selectReadCount">
											<option value="이름" selected="selected">이름순</option>
											<option value="이메일">이메일순</option>
											<option value="가입일">가입일순</option>
										</select>
									</div>

									<div class="search_area_form_input"></div>
								</form>
							</div>
							<div class="clear"></div>

							<div class="card-content">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>이름</th>
												<th>이메일</th>
												<th>가입일</th>
												<th></th>
											</tr>
										</thead>
										<tbody>

											<tr>
												<td>조문규</td>
												<td>뀨@gmail.com</td>
												<td>2018.10.26</td>
												<td><button class="btn">제외</button></td>
											</tr>
										</tbody>
									</table>


									<div class="clear"></div>


									<div
										style="width: 230px; margin-left: auto; margin-right: auto;">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#">
													<span>«</span>
											</a></li>
											<li class="page-item active"><a class="page-link"
												href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a>
											</li>
											<li class="page-item"><a class="page-link" href="#">3</a>
											</li>
											<li class="page-item"><a class="page-link" href="#">4</a>
											</li>
											<li class="page-item"><a class="page-link" href="#">
													<span>»</span>
											</a></li>
										</ul>
									</div>

									<div class="clear"></div>
								</div>
							</div>
						</div>
					</div>

				</div>
            
            <%@ include file="/WEB-INF/view/include/footer.jsp" %>
         </div>
      </div>
   </div>
   <!-- jQuery Js -->
   <script src="${contextPath}/assets/js/jquery-1.10.2.js"></script>
   <!-- Bootstrap Js -->
   <script src="${contextPath}/assets/js/bootstrap.min.js"></script>
   <script src="${contextPath}/assets/materialize/js/materialize.min.js"></script>
   <!-- Metis Menu Js -->
   <script src="${contextPath}/assets/js/jquery.metisMenu.js"></script>
   <!-- Custom Js -->
   <script src="${contextPath}/assets/js/custom-scripts.js"></script>
</body>
</html>