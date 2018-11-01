<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>성적관리</title>

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

	<!-- 강사의 학생 성적 입력/수정 페이지 -->

	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">성적관리</h1>
			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-content">
								<form method="post" action="#" name="grade">
									<span style="float: right"><input type="submit"
										value="등록" class="btn btn-primary" /></span> <br> <br> <br>
									<div class="table-responsive table-bordered">
										<table class="table">
											<thead>
												<tr>
													<th style="text-align: center; vertical-align: middle;">이름</th>
													<th style="text-align: center; vertical-align: middle;">과제1
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">과제2
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">과제3
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">과제4
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">중간고사
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">과제5
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">과제6
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">과제7
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">과제8
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">기말고사
														[<input type="text"
														style="width: 20px; vertical-align: middle;">]
													</th>
													<th style="text-align: center; vertical-align: middle;">총점
														[100]</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td style="text-align: center; vertical-align: middle;"><a
														href="grade_student.jsp">이름</a></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;">총점</td>
												</tr>

												<tr>
													<td style="text-align: center; vertical-align: middle;"><a
														href="grade_student.jsp">이름</a></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;">총점</td>
												</tr>

												<tr>
													<td style="text-align: center; vertical-align: middle;"><a
														href="grade_student.jsp">이름</a></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;">총점</td>
												</tr>

												<tr>
													<td style="text-align: center; vertical-align: middle;"><a
														href="grade_student.jsp">이름</a></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;">총점</td>
												</tr>

												<tr>
													<td style="text-align: center; vertical-align: middle;"><a
														href="grade_student.jsp">이름</a></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;"><input
														type="text" style="width: 20px; vertical-align: middle;"></td>
													<td style="text-align: center; vertical-align: middle;">총점</td>
												</tr>


											</tbody>

											<tfoot>
												<tr>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
													<td style="text-align: center; vertical-align: middle;">평균</td>
												</tr>
											</tfoot>
										</table>
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
