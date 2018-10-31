<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>수업 목록</title>

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
				<h1 class="page-header">
					수업 목록
					<!-- 마스터에게만 보임 -->
					<button class="btn btn-danger">
						<i class="material-icons left">settings</i>수업 개설
					</button>
				</h1>

			</div>

			<div id="page-inner">
				<div class="row">

					<div class="card">
						<div class="card-action">
							<b>수강 중</b>
						</div>
						<!-- 수강중인 수업이 없는 학생은 카드는 보이되, 수업은 보이지 않고 "수강중인 수업이 없습니다." 멘트를 보이게 해주세요 -->
						<div class="card-image">
							<ul class="collection">
								<li class="collection-item avatar">
									<i class="material-icons circle blue">mode_edit</i> 
									<span class="title">청년아카데미 대학생 반 (A) - 봉미선 강사</span><br>
									<p style="float: left;"> 디지털융합 SoftWare 코딩 예비교육 <br> 2018.12.26 ~ 2019.01.30, 09:00~18:00</p> 
									<!-- 수강신청이 되어있는 학생은 수강중인 수업 리스트가 보이며, 여기서 수강 포기 버튼만 보임 -->
									<!-- 강사의 경우 본인의 수업 리스트가 보이며, 수강 포기 버튼 안보임. 강사는 수업 포기할 권한 없음. 마스터가 있음 -->
									<span style="float: right;">
										<button class="btn btn-warning">
											<i class="material-icons left">delete</i>수강포기
										</button>
									</span>
								</li>
								<li class="collection-item avatar">
									<i class="material-icons circle blue">mode_edit</i> 
									<span class="title">청년아카데미 대학생 반 (B) - 신영만 강사</span><br>
									<p style="float: left;"> JAVA기반 빅데이타 IT콘텐츠 정보시스템 취업과정 <br> 2018.08.06 ~ 2018.12.27, 09:00~18:00 </p> 
									<span style="float: right;">
										<button class="btn btn-warning">
											<i class="material-icons left">delete</i>수강포기
										</button>
									</span>
								</li>
							</ul>
						</div>
					</div>

					<br>

					<div class="card">
						<div class="card-action">
							<b>수강 신청</b>
						</div>
						<div class="card-image">
							<ul class="collection">
								<li class="collection-item avatar">
									<i class="material-icons circle red">mode_edit</i> 
									<span class="title">청년아카데미 대학생 반 (C) - 신짱구 강사</span><br>
									<p style="float: left;"> 머신러닝 기반 빅데이터 분석 개발자 전문과정 <br> 2018. 10. 29 ~ 2019. 04.23, 09:00 ~18:00</p> 
									<span style="float: right;">
										<!-- 학생의 경우: 수강중인 수업 이외의 수업 리스트가 보이며, 수강 신청 버튼이 보임  -->
										<!-- 강사의 경우: 수강중인 수업 이외의 수업 리스트가 보이며, 수강 신청 버튼이 안보임  -->
										<button class="btn btn-success">
											<i class="material-icons left">done</i>수강신청
										</button>
										<!-- 마스터의 경우: 수강중인 수업이 없으니, 모든 수업 리스트가 이곳에 보이며, 수업 수정/삭제 버튼이 보임  -->
										<button class="btn btn-danger">
											<i class="material-icons left">settings</i>수업 수정
										</button>
										<button class="btn btn-danger">
											<i class="material-icons left">settings</i>수업 삭제
										</button>
									</span>
								</li>
								<li class="collection-item avatar">
									<i class="material-icons circle red">mode_edit</i> 
									<span class="title">청년아카데미 대학생 반 (D) - 김철수 강사</span><br>
									<p style="float: left;"> DBMS기반 빅데이터 응용 SW개발자 전문과정 <br> 2018. 11. 27 ~ 2019. 05. 23, 09:00 ~ 18:00</p> 
									<span style="float: right;">
										<button class="btn btn-success">
											<i class="material-icons left">done</i>수강신청
										</button>
									</span>
								</li>
								<li class="collection-item avatar">
									<i class="material-icons circle red">mode_edit</i> 
									<span class="title">청년아카데미 대학생 반 (E) - 한유리 강사</span><br>
									<p style="float: left;"> 빅데이터 활용 JAVA기반 SW개발자 양성과정 <br> 2018. 12. 27 ~ 2019. 06. 21, 09:00 ~ 18:00</p> 
									<span style="float: right;">
										<button class="btn btn-success">
											<i class="material-icons left">done</i>수강신청
										</button>
									</span>
								</li>
								<li class="collection-item avatar">
									<i class="material-icons circle red">mode_edit</i> 
									<span class="title">청년아카데미 대학생 반 (F) - 이훈이 강사</span><br>
									<p style="float: left;"> 표준프레임워크 기반 응용 SW개발자 양성과정 <br> 2018. 12. 11~ 2019. 06. 05, 09:00~ 18:00</p> 
									<span style="float: right;">
										<button class="btn btn-success">
											<i class="material-icons left">done</i>수강신청
										</button>
									</span>
								</li>
								<li class="collection-item avatar">
									<i class="material-icons circle red">mode_edit</i> 
									<span class="title">청년아카데미 대학생 반 (G) - 맹구 강사</span><br>
									<p style="float: left;"> 자바(JAVA)기반 IT콘텐츠 개발자 양성과정 <br> 2018. 11. 14 ~ 2019. 05. 13, 09:00 ~ 18:00</p> 
									<span style="float: right;">
										<button class="btn btn-success">
											<i class="material-icons left">done</i>수강신청
										</button>
									</span>
								</li>
							</ul>
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
