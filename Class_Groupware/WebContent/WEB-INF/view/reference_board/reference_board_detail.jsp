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

<link href="${contextPath }/assets/open_board/css/open_board_detail.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"
	integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns"
	crossorigin="anonymous"/>

</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>

		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">자료실</h1>
			</div>
			<div id="page-inner">

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-content">
								<div class="table-responsive">
									<div class="ref_file_area">
										<div class="content_title">여기는 제목</div>
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
															</li>
														</div>
														<div style="float: right;">
															<li><i class="material-icons dp48">visibility</i> <b>13</b>
															</li>
														</div>
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
													<div class="share">
														<i class="fas fa-share-alt"></i>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="ref_file_name">
														다운로드 <a href="#">첨부파일이름.txt</a>
													</div>
													<div class="ref_file_icon"></div>
												</td>
											</tr>

											<tr>
												<td>
													<button class="btn">수정</button>
													<button class="btn">삭제</button>
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
														<form>
															<textarea class="form-control" rows="5"
																placeholder="로그인 후 댓글 입력이 가능합니다." class="span2"></textarea>
															<td>
																<button class="btn">등록</button>
															</td>
														</form>
												</td>
												</div>
											</tr>
										</tbody>
									</table>
									<!--댓글-->
									<div class="re_comment">
										<table class="table-responsive">
											<thead>
												<tr>
													<td>
														<ul class="list-inline">
															<li>댓글 작성자1</li>|
															<li>작성일 2018.10.29</li>|
															<li><a href="#"> <i class="fas fa-reply"></i> 답글
																	달기 </li>
														</ul>
													</td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>댓글 내용1</td>
												</tr>

											</tbody>
										</table>
									</div>
									<div class="clear"></div>
									<hr>
									<div class="reply_write_area">
										<form>
											<div class="reply_write_left">닉네임</div>
											<div class="reply_write_right">
												<div class="reply_write_text">
													<textarea class="form-control" rows="5" cols="70"
														placeholder="답글 달기 누르면 나오는 모양" class="span10"></textarea>
												</div>
												<div class="clear"></div>
												<div class="reply_write_button">
													<button class="btn" style="float: right">등록</button>
												</div>
											</div>
										</form>
									</div>
									<div class="clear"></div>
									<div class="re_comment">
										<table class="table-responsive">
											<tr>
											<thead>
												<tr>
													<td>
														<ul class="list-inline">
															<li>댓글 작성자2</li>|
															<li>작성일 2018.10.29</li>|
															<li><i onclick="create_recomment_area()"
																class="fas fa-reply"></i> 답글 달기</li>
														</ul>
													</td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>댓글 내용2</td>
												</tr>
											</tbody>
											</tr>
										</table>
									</div>
									<div class="clear"></div>
									<hr>
									<div id="test">
										dd
										<!--여기에 댓글상자 생성-->
									</div>
									<div class="clear"></div>
									<div class="re_comment">
										<table class="table-responsive">
											<tr>
											<thead>
												<tr>
													<td>
														<ul class="list-inline">
															<li>댓글 작성자3</li>|
															<li>작성일 2018.10.29</li>|
															<li><a href="#"> <i class="fas fa-reply"></i> 답글
																	달기 </li>
														</ul>
													</td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>너는 모르지? <br> 귀여운 <br> 푸들의 복실복실함 <br>
													</td>
												</tr>
											</tbody>
											</tr>
										</table>
									</div>
									<div class="clear"></div>
									<hr>

									<div class="re_comment_icon">
										<i class="fab fa-replyd"></i>
									</div>
									<div class="re_comment">
										<table class="table-responsive">
											<tr>
											<thead>
												<tr>
													<td>
														<ul class="list-inline">
															<li>댓글 작성자4</li>|
															<li>작성일 2018.10.29</li>|
															<li><a href="#"> <i class="fas fa-reply"></i> 답글
																	달기 </li>
														</ul>
													</td>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>@ <b>댓글작성자3</b> 대댓글임ㅇㅅㅇ <br> 기여운 카와이한 고양이 <br>
														기여운 카와이한 멍뭉이 <br> ㅇㅅㅇ, ㅇㅂㅇ, ㅇㅁㅇ,
														'^'(~~~~~~!@!@!@!@!@@#@#@#@#@#@#@#@#@# <br> ㅁㄴㅇㅁㄴㅇㄴ
													</td>
												</tr>
											</tbody>
											</tr>
										</table>
									</div>
									<div class="clear"></div>
									<hr>

									<div class="re_comment_icon">
										<i class="fab fa-replyd"></i>
									</div>
									<div class="re_comment">
										<table class="table-responsive">
											<tr>
											<thead>
												<tr>
													<td>
														<ul class="list-inline">
															<li>댓글 작성자5</li>|
															<li>작성일 2018.10.29</li>|
															<li><a href="#"> <i class="fas fa-reply"></i> 답글
																	달기 </li>
														</ul>
													</td>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td><b>@댓글작성자4</b> 대댓글임ㅇㅅㅇ</td>
												</tr>
											</tbody>
											</tr>
										</table>
									</div>
									<div class="clear"></div>
									<hr>


								</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>

					<%@ include file="/WEB-INF/view/include/footer.jsp"%>
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
		<script src="${contextPath}/assets/reference_board/js/referencd_board_detail.js"></script>
</body>
</html>