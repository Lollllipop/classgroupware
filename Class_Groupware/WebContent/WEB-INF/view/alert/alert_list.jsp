<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>알림 목록</title>

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
<link rel="stylesheet"
	href="${contextPath}/assets/js/Lightweight-Chart/cssCharts.css">
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>
		<div id="page-wrapper">

			<div class="header">
				<h1 class="page-header">알림 목록</h1>
			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-content">
								<form method="post" action="#" name="grade">
									<div class="box">
										<div class="box-header">
											<div class="box-tools">
												<div class="input-group input-group-sm"
													style="width: 150px; float: left; margin-left: 20px;">
													<input type="text" name="table_search"
														class="form-control pull-right" placeholder="Search">
													<div class="input-group-btn">
														<button type="submit" class="btn btn-default">
															<i class="fa fa-search"></i>
														</button>
													</div>
												</div>
												<div class="input-group input-group-sm"
													style="float: right;">
													<input type="submit" value="전체삭제" class="btn btn-danger" />
												</div>
											</div>
										</div>
										<br> <br> <br>
										<!-- /.box-header -->
										<div class="box-body table-responsive no-padding">
											<table class="table table-hover">
												<tr>
													<th>ID</th>
													<th>User</th>
													<th>Date</th>
													<th>Status</th>
													<th>Notice</th>
												</tr>
												<tr>
													<td>4</td>
													<td>강사</td>
													<td>10-29-2018</td>
													<td><span class="label label-success">확인</span></td>
													<td><a href="#">[과제게시판]에 [과제1]가 등록되었습니다</a></td>
												</tr>
												<tr>
													<td>3</td>
													<td>우지현</td>
													<td>10-28-2018</td>
													<td><span class="label label-success">확인</span></td>
													<td><a href="#">[자유게시판]에 [글제목1]에 댓글이 등록되었습니다</a></td>
												</tr>
												<tr>
													<td>2</td>
													<td>이시우</td>
													<td>10-25-2018</td>
													<td><span class="label label-warning">미확인</span></td>
													<td><a href="#">[자유게시판]에 [글제목1]에 댓글이 등록되었습니다</a></td>
												</tr>
												<tr>
													<td>1</td>
													<td>최다한</td>
													<td>10-25-2018</td>
													<td><span class="label label-warning">미확인</span></td>
													<td><a href="#">[자유게시판]에 [글제목1]에 댓글이 등록되었습니다</a></td>
												</tr>
											</table>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="/WEB-INF/view/include/footer.jsp"%>
			</div>
		</div>
	</div>

	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="${contextPath}/assets/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="${contextPath}/assets/js/bootstrap.min.js"></script>

	<script src="${contextPath}/assets/materialize/js/materialize.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="${contextPath}/assets/js/jquery.metisMenu.js"></script>
	<!-- Morris Chart Js -->
	<script src="${contextPath}/assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="${contextPath}/assets/js/morris/morris.js"></script>


	<script src="${contextPath}/assets/js/easypiechart.js"></script>
	<script src="${contextPath}/assets/js/easypiechart-data.js"></script>

	<script
		src="${contextPath}/assets/js/Lightweight-Chart/jquery.chart.js"></script>

	<!-- Custom Js -->
	<script src="${contextPath}/assets/js/custom-scripts.js"></script>
</body>
</html>