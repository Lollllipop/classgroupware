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

<!-- 성적 강사,마스터 전체학생 전체성적 볼 수 만 있는 페이지 -->

	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">성적관리</h1>
			</div>

			<div id="page-inner">
				<div class="row">
					<div class="card">
						<div class="card-content">
							<!-- 강사라면 편집페이지로 넘어가는 버튼 보임. 마스터는 안보임 -->
							<span style="float: right">
								<button class="btn btn-primary" onclick="location.href='grade_teacher_modify.jsp' ">
									<i class="material-icons left">done</i>성적 입력
								</button>
							</span> <br> <br> <br>
							<div class="table-responsive table-bordered">
								<table class="table">
									<thead>
										<tr>
											<th style="text-align: center; vertical-align: middle;">이름</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">과제1
												[10]</th>
											<th style="text-align: center; vertical-align: middle;">평균
												[100]</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td style="text-align: center; vertical-align: middle;"><a href="grade_student.jsp">이름</a></td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">2</td>
											<td style="text-align: center; vertical-align: middle;">3</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">6</td>
											<td style="text-align: center; vertical-align: middle;">7</td>
										</tr>
										
										<tr>
											<td style="text-align: center; vertical-align: middle;"><a href="grade_student.jsp">이름</a></td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">2</td>
											<td style="text-align: center; vertical-align: middle;">3</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">6</td>
											<td style="text-align: center; vertical-align: middle;">7</td>
										</tr>
										
										<tr>
											<td style="text-align: center; vertical-align: middle;"><a href="grade_student.jsp">이름</a></td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">2</td>
											<td style="text-align: center; vertical-align: middle;">3</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">6</td>
											<td style="text-align: center; vertical-align: middle;">7</td>
										</tr>
										
										<tr>
											<td style="text-align: center; vertical-align: middle;"><a href="grade_student.jsp">이름</a></td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">2</td>
											<td style="text-align: center; vertical-align: middle;">3</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">6</td>
											<td style="text-align: center; vertical-align: middle;">7</td>
										</tr>
										
										<tr>
											<td style="text-align: center; vertical-align: middle;"><a href="grade_student.jsp">이름</a></td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">2</td>
											<td style="text-align: center; vertical-align: middle;">3</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">6</td>
											<td style="text-align: center; vertical-align: middle;">7</td>
										</tr>
										
										<tr>
											<td style="text-align: center; vertical-align: middle;"><a href="grade_student.jsp">이름</a></td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">2</td>
											<td style="text-align: center; vertical-align: middle;">3</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">6</td>
											<td style="text-align: center; vertical-align: middle;">7</td>
										</tr>

									</tbody>

									<tfoot>
										<tr>
											<td style="text-align: center; vertical-align: middle;">평균</td>
											<td style="text-align: center; vertical-align: middle;">10</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">10</td>
											<td style="text-align: center; vertical-align: middle;">7</td>
											<td style="text-align: center; vertical-align: middle;">6</td>
											<td style="text-align: center; vertical-align: middle;">9</td>
											<td style="text-align: center; vertical-align: middle;">7</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">8</td>
											<td style="text-align: center; vertical-align: middle;">5</td>
											<td style="text-align: center; vertical-align: middle;">7</td>
										</tr>
									</tfoot>
								</table>
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

	<script src="${contextPath}/assets/js/Lightweight-Chart/jquery.chart.js"></script>
	<!-- Custom Js -->
	<script src="${contextPath}/assets/js/custom-scripts.js"></script>
</body>

</html>