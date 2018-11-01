<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>출석관리</title>

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
<<<<<<< HEAD

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger {
	cursor: pointer;
}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker {
	cursor: pointer;
}
</style>
</head>
<body>


	<!-- 마스터와 강사의 출석 첫 페이지 -->


	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">출석관리</h1>
			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-content">
								<form method="post" action="#" name="attendance">
									<span style="float: right"> <input type="submit"
										value="입력" class="btn btn-primary " />
									</span> <br> <br>
									<div class="table-responsive">
										<table class="table"
											style="width: 500px; margin-left: auto; margin-right: auto;">
											<thead>
												<tr>
													<th colspan="2"><b> <!-- datepicker를 통해 원하는 날짜를 선택 가능 -->
															<input type="text" id="datepicker"
															style="text-align: center; font-size: 2em;"> <script> 
															$("#datepicker").datepicker(); 
															$('#datepicker').datepicker('setDate', 'today');
														</script>
													</b></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th style="text-align: center; vertical-align: middle;">
														<!-- 이름 선택 시 해당 학생의 출결 상세페이지로 넘어감 --> <a
														href="attendance_student.jsp">이름</a>
													</th>
													<td style="text-align: center; vertical-align: middle;">
														<!-- db에 해당 날짜의 데이터가 없다면 출석에 체크되어있는 것이 디폴트 값--> <!-- db에 해당 날짜의 데이터가 있다면 그 데이터를 불러와 체크 되어있어야 함-->
														<!-- 해당 날짜의 출석 체크 후 폼으로 넘김. 날짜 같이 넘기는 거 필수. 학생출결페이지에서 캘린더로 불러와야함 -->
														<input name="group1" type="radio" id="test1_1"
														checked="checked" /> <label for="test1_1">출석</label> <input
														name="group1" type="radio" id="test1_2" /> <label
														for="test1_2">지각</label> <input name="group1" type="radio"
														id="test1_3" /> <label for="test1_3">조퇴</label> <input
														name="group1" type="radio" id="test1_4" /> <label
														for="test1_4">결석</label>
													</td>
												</tr>
												<tr>
													<th style="text-align: center; vertical-align: middle;">
														<a href="attendance_student.jsp">이름</a>
													</th>
													<td style="text-align: center; vertical-align: middle;">
														<input name="group2" type="radio" id="test2_1"
														checked="checked" /> <label for="test2_1">출석</label> <input
														name="group2" type="radio" id="test2_2" /> <label
														for="test2_2">지각</label> <input name="group2" type="radio"
														id="test2_3" /> <label for="test2_3">조퇴</label> <input
														name="group2" type="radio" id="test2_4" /> <label
														for="test2_4">결석</label>
													</td>
												</tr>
												<tr>
													<th style="text-align: center; vertical-align: middle;">
														<a href="attendance_student.jsp">이름</a>
													</th>
													<td style="text-align: center; vertical-align: middle;">
														<input name="group3" type="radio" id="test3_1"
														checked="checked" /> <label for="test3_1">출석</label> <input
														name="group3" type="radio" id="test3_2" /> <label
														for="test3_2">지각</label> <input name="group3" type="radio"
														id="test3_3" /> <label for="test3_3">조퇴</label> <input
														name="group3" type="radio" id="test3_4" /> <label
														for="test3_4">결석</label>
													</td>
												</tr>
												<tr>
													<th style="text-align: center; vertical-align: middle;">
														<a href="attendance_student.jsp">이름</a>
													</th>
													<td style="text-align: center; vertical-align: middle;">
														<input name="group4" type="radio" id="test4_1"
														checked="checked" /> <label for="test4_1">출석</label> <input
														name="group4" type="radio" id="test4_2" /> <label
														for="test4_2">지각</label> <input name="group4" type="radio"
														id="test4_3" /> <label for="test4_3">조퇴</label> <input
														name="group4" type="radio" id="test4_4" /> <label
														for="test4_4">결석</label>
													</td>
												</tr>
												<tr>
													<th style="text-align: center; vertical-align: middle;">
														<a href="attendance_student.jsp">이름</a>
													</th>
													<td style="text-align: center; vertical-align: middle;">
														<input name="group5" type="radio" id="test5_1"
														checked="checked" /> <label for="test5_1">출석</label> <input
														name="group5" type="radio" id="test5_2" /> <label
														for="test5_2">지각</label> <input name="group5" type="radio"
														id="test5_3" /> <label for="test5_3">조퇴</label> <input
														name="group5" type="radio" id="test5_4" /> <label
														for="test5_4">결석</label>
													</td>
												</tr>
												<tr>
													<th style="text-align: center; vertical-align: middle;">
														<a href="attendance_student.jsp">이름</a>
													</th>
													<td style="text-align: center; vertical-align: middle;">
														<input name="group6" type="radio" id="test6_1"
														checked="checked" /> <label for="test6_1">출석</label> <input
														name="group6" type="radio" id="test6_2" /> <label
														for="test6_2">지각</label> <input name="group6" type="radio"
														id="test6_3" /> <label for="test6_3">조퇴</label> <input
														name="group6" type="radio" id="test6_4" /> <label
														for="test6_4">결석</label>
													</td>
												</tr>
											</tbody>
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




	<!-- jQuery Js -->
	<script src="${contextPath}/assets/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="${contextPath}/assets/js/bootstrap.min.js"></script>

	<script src="${contextPath}/assets/materialize/js/materialize.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="${contextPath}/assets/js/jquery.metisMenu.js"></script>
	<!-- Custom Js -->
	<script src="${contextPath}/assets/js/custom-scripts.js"></script>

	<!-- Morris Chart Js -->
	<script src="${contextPath}/assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="${contextPath}/assets/js/morris/morris.js"></script>

	<script src="${contextPath}/assets/js/easypiechart.js"></script>
	<script src="${contextPath}/assets/js/easypiechart-data.js"></script>

	<script
		src="${contextPath}/assets/js/Lightweight-Chart/jquery.chart.js"></script>
=======
	
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger {
	cursor: pointer;
}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker {
	cursor: pointer;
}
</style>
</head>
<body>


<!-- 마스터와 강사의 출석 첫 페이지 -->


	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">출석관리</h1>
			</div>

			<div id="page-inner">
				<div class="row">
					<div class="card">
						<div class="card-content">
							<form method="post" action="#" name="attendance">
								<span style="float: right">
									<input type="submit" value="입력"class="btn btn-primary "/>
								</span> <br> <br>
								<div class="table-responsive">
									<table class="table" style="width: 500px; margin-left: auto; margin-right: auto;">
										<thead>
											<tr>
												<th colspan="2">
													<b>
														<!-- datepicker를 통해 원하는 날짜를 선택 가능 -->
														<input type="text" id="datepicker" style="text-align:center; font-size: 2em;"> 
														<script> 
															$("#datepicker").datepicker(); 
															$('#datepicker').datepicker('setDate', 'today');
														</script>
													</b>
												</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th style="text-align: center; vertical-align: middle;">
												<!-- 이름 선택 시 해당 학생의 출결 상세페이지로 넘어감 -->
													<a href="attendance_student.jsp">이름</a>
												</th>
												<td style="text-align: center; vertical-align: middle;">
												<!-- db에 해당 날짜의 데이터가 없다면 출석에 체크되어있는 것이 디폴트 값-->
												<!-- db에 해당 날짜의 데이터가 있다면 그 데이터를 불러와 체크 되어있어야 함-->
												<!-- 해당 날짜의 출석 체크 후 폼으로 넘김. 날짜 같이 넘기는 거 필수. 학생출결페이지에서 캘린더로 불러와야함 -->
													<input name="group1" type="radio" id="test1_1" checked="checked" /> 
													<label for="test1_1">출석</label> 
													<input name="group1" type="radio" id="test1_2" /> 
													<label for="test1_2">지각</label> 
													<input name="group1" type="radio" id="test1_3" /> 
													<label for="test1_3">조퇴</label> 
													<input name="group1" type="radio" id="test1_4" /> 
													<label for="test1_4">결석</label>
												</td>
											</tr>
											<tr>
												<th style="text-align: center; vertical-align: middle;">
													<a href="attendance_student.jsp">이름</a>
												</th>
												<td style="text-align: center; vertical-align: middle;">
													<input name="group2" type="radio" id="test2_1" checked="checked" /> 
													<label for="test2_1">출석</label> 
													<input name="group2" type="radio" id="test2_2" /> 
													<label for="test2_2">지각</label> 
													<input name="group2" type="radio" id="test2_3" /> 
													<label for="test2_3">조퇴</label> 
													<input name="group2" type="radio" id="test2_4" /> 
													<label for="test2_4">결석</label>
												</td>
											</tr>
											<tr>
												<th style="text-align: center; vertical-align: middle;">
													<a href="attendance_student.jsp">이름</a>
												</th>
												<td style="text-align: center; vertical-align: middle;">
													<input name="group3" type="radio" id="test3_1" checked="checked" /> 
													<label for="test3_1">출석</label> 
													<input name="group3" type="radio" id="test3_2" /> 
													<label for="test3_2">지각</label> 
													<input name="group3" type="radio" id="test3_3" /> 
													<label for="test3_3">조퇴</label> 
													<input name="group3" type="radio" id="test3_4" /> 
													<label for="test3_4">결석</label>
												</td>
											</tr>
											<tr>
												<th style="text-align: center; vertical-align: middle;">
													<a href="attendance_student.jsp">이름</a>
												</th>
												<td style="text-align: center; vertical-align: middle;">
													<input name="group4" type="radio" id="test4_1" checked="checked" /> 
													<label for="test4_1">출석</label> 
													<input name="group4" type="radio" id="test4_2" /> 
													<label for="test4_2">지각</label> 
													<input name="group4" type="radio" id="test4_3" /> 
													<label for="test4_3">조퇴</label> 
													<input name="group4" type="radio" id="test4_4" /> 
													<label for="test4_4">결석</label>
												</td>
											</tr>
											<tr>
												<th style="text-align: center; vertical-align: middle;">
													<a href="attendance_student.jsp">이름</a>
												</th>
												<td style="text-align: center; vertical-align: middle;">
													<input name="group5" type="radio" id="test5_1" checked="checked" /> 
													<label for="test5_1">출석</label> 
													<input name="group5" type="radio" id="test5_2" /> 
													<label for="test5_2">지각</label> 
													<input name="group5" type="radio" id="test5_3" /> 
													<label for="test5_3">조퇴</label> 
													<input name="group5" type="radio" id="test5_4" /> 
													<label for="test5_4">결석</label>
												</td>
											</tr>
											<tr>
												<th style="text-align: center; vertical-align: middle;">
													<a href="attendance_student.jsp">이름</a>
												</th>
												<td style="text-align: center; vertical-align: middle;">
													<input name="group6" type="radio" id="test6_1" checked="checked" /> 
													<label for="test6_1">출석</label> 
													<input name="group6" type="radio" id="test6_2" /> 
													<label for="test6_2">지각</label> 
													<input name="group6" type="radio" id="test6_3" /> 
													<label for="test6_3">조퇴</label> 
													<input name="group6" type="radio" id="test6_4" /> 
													<label for="test6_4">결석</label>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</form>
						</div>
					</div>
				</div>
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

	<!-- Morris Chart Js -->
	<script src="${contextPath}/assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="${contextPath}/assets/js/morris/morris.js"></script>

	<script src="${contextPath}/assets/js/easypiechart.js"></script>
	<script src="${contextPath}/assets/js/easypiechart-data.js"></script>

	<script src="${contextPath}/assets/js/Lightweight-Chart/jquery.chart.js"></script>
>>>>>>> branch 'master' of https://github.com/Lollllipop/classgroupware.git

	<!-- Custom Js -->
	<script src="${contextPath}/assets/js/custom-scripts.js"></script>

</body>
</html>
