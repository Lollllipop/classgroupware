<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Class Groupware</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${contextPath}/assets/materialize/css/materialize.min.css"
	media="screen,projection" />
<!-- Bootstrap Styles-->
<link href="${contextPath}/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="${contextPath}/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="${contextPath}/assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />
<!-- Custom Styles-->
<link href="${contextPath}/assets/css/custom-styles.css"
	rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link href="${contextPath}/assets/js/Lightweight-Chart/cssCharts.css"
	rel="stylesheet">

<%-- 여기에 css등 링크 작성!! --%>
<style>
.clear {
	clear: both;
}

footer>strong {
	color: #F44336;
	font-size: 18px;
}

.cntAllTextArea {
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

.share {
	float: right;
}

.ref_file_name {
	float: left;
}

.ref_file_icon {
	float: left;
}

.re_comment_icon {
	float: left;
	width: 50px;
	height: 50px;
}

.re_comment {
	float: left;
	width: 600px;
	height: 150px;
}

.re_comment_btn {
	float: right;
}

.right {
	float: right;
}
</style>
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>

		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">과제</h1>
			</div>
			<div id="page-inner">

				<%-- 여기에 코드 작성!! --%>
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-content">
								<div class="table-responsive">
									<div class="ref_file_area">
										<div class="ref_file_name">제목</div>
										<div class="ref_file_icon">
											<i class="fas fa-file-invoice"></i>
										</div>
									</div>
									<table class="table">
										<thead>
											<tr>
												<td>
													<ul class="list-inline">
														<li>작성자</li>|
														<li>작성일 2018.10.29</li>|
														<li>수정일 2018.10.29</li>
														<div style="float: right;">
															<li><i class="material-icons dp48">chat_bubble</i> <b>5</b>
															<!--제출--></li>
														</div>
														<div style="float: right;">
															<li><i class="material-icons dp48">visibility</i> <b>13</b>
															<!--조회수--></li>
														</div>
													</ul>
													<ul class="list-inline">
														<li>제출기간 시작일</li>
														<li>2018.10.30 오전11:00</li>
													</ul>
													<ul class="list-inline">
														<li>제출기간 마감일</li>
														<li>2019.11.01 오후11:00</li>
													</ul>
												</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<p>
														글내용 <br> ㅇㅅㅇ <br> ㅇㅅㅇ <br> ㅎㅎ <br>
														'^'(*~ <br>
													</p>
												</td>
											</tr>
											<tr>
												<td>
													<div class="ref_file_name">
														첨부파일 <a href="#">첨부파일이름.txt</a>
													</div>
													<div class="ref_file_icon"></div>
												</td>
											</tr>

											<tr>
												<td>
													<button class="btn">수정</button>
													<button class="btn">삭제</button> <!-- 과제 게시물에 대한 수정과 삭제는 강사님만! 학생은 볼 수 없음 -->
												</td>
											</tr>

											<tr>
												<td><a href="#">↑ 다음글 | 일반글</a></td>
											</tr>
											<tr>
												<td><a href="#">↓ 이전글 | 안녕하세요</a></td>

											</tr>
											<tr>
												<td>
													<div class="form-group">
														<form id="file_upload_form" method="post"
															enctype="multipart/form-data">
															<textarea class="form-control" rows="5"
																placeholder="로그인 후 이용 가능합니다." class="span2"></textarea>
															<ul>
																<!-- 스프링으로는 다중 파일 업로드 구현해야 함!!! -->
																<li><br> <input type="file"></li>
																<li><br> <label> <input
																		type="checkbox">선택파일삭제
																</label></li>
																<li>
																	<div class="right">
																		<button class="btn">제출</button>
																	</div>
																</li>
															</ul>
														</form>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!--댓글-->



					<div class="col-md-12">
						<div class="card">
							<div class="card-content">
								<button class="btn btn-warning" style="float: right;">전체
									다운로드</button>
								<div class="box box-solid">
									<div class="box-body">
										<div class="box-group" id="accordion">
											<div class="panel box box-primary">
												<table class="table-responsive">
													<thead>
														<tr>
															<td>
																<ul class="list-inline">
																	<li>조문규</li>|
																	<li>작성일 2018.10.29</li>|
																	<li><a href="#">수정</a></li>|
																	<li><a href="#">삭제</a></li>
																	<!-- 제출한 과제는 본인만 확인, 수정, 삭제가능!!!!!!!!! -->
																</ul>
															</td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>조문규 제출 과제입니다</td>
														</tr>
														<tr>
															<td>제출자료 : 자료</td>
														</tr>
													</tbody>
												</table>
											</div>

											<div class="panel box box-primary">
												<table class="table-responsive">
													<thead>
														<tr>
															<td>
																<ul class="list-inline">
																	<li>김기태</li>|
																	<li>작성일 2018.10.29</li>|
																	<li><a href="#">수정</a></li>|
																	<li><a href="#">삭제</a></li>
																</ul>
															</td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>김기태 제출 과제입니다.</td>
														</tr>
														<tr>
															<td>제출자료 : 자료</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="panel box box-primary">
												<table class="table-responsive">
													<thead>
														<tr>
															<td>
																<ul class="list-inline">
																	<li>최다한</li>|
																	<li>작성일 2018.10.29</li>|
																	<li><a href="#">수정</a></li>|
																	<li><a href="#">삭제</a></li>
																</ul>
															</td>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>최다한 제출 과제입니다.</td>
														</tr>
														<tr>
															<td>제출자료 : 자료</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
					</div>

					<%@ include file="/WEB-INF/view/include/footer.jsp"%>
					</div>
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