<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">


<!-- Ionicons -->
<link rel="stylesheet"
	href="${contextPath}/assets/calendar/bower_components/Ionicons/css/ionicons.min.css">
<!-- fullCalendar -->
<link rel="stylesheet"
	href="${contextPath}/assets/calendar/bower_components/fullcalendar/dist/fullcalendar.min.css">
<link rel="stylesheet"
	href="${contextPath}/assets/calendar/bower_components/fullcalendar/dist/fullcalendar.print.min.css"
	media="print">
<!-- Theme style -->
<link rel="stylesheet"
	href="${contextPath}/assets/calendar/dist/css/AdminLTE.min.css">
<link rel="stylesheet"
	href="${contextPath}/assets/calendar/dist/css/skins/_all-skins.min.css">

</head>
<body>


<!-- 학생의 출결 첫 페이지/ 마스터,강사의 출결 두번째 페이지(첫페이지에서 이름 선택시 넘어옴) -->


	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>

		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">내 출석</h1>
			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-lg-6">
						<div class="card">
							<!-- 해당 학생 이름 나와야함 -->
							<div class="card-action">조문규님의 현재 출석률</div>
							<div class="card-content">
								<div class="progress-group">
								<!-- 해당 학생의 출석률 계산 -->
									<span class="progress-number"><b>80</b>/100</span>
									<div class="progress">
										<div class="progress-bar progress-bar-success" style="width: 80%"></div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6">
						<div class="card">
							<div class="card-action">전체 출석 보기</div>
							<div class="card-content">
								<div class="box box-primary">
									<div class="box-body no-padding">
									<!-- 출석 데이터만 불러와서 읽어야함. 수정 불가 -->
										<div id="calendar"></div>
									</div>
								</div>
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

	<script src="${contextPath}/assets/js/Lightweight-Chart/jquery.chart.js"></script>

	<!-- Custom Js -->
	<script src="${contextPath}/assets/js/custom-scripts.js"></script>


	<!-- jQuery 3 -->
	<script
		src="${contextPath}/assets/calendar/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="${contextPath}/assets/calendar/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="${contextPath}/assets/calendar/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="${contextPath}/assets/calendar/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="${contextPath}/assets/calendar/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${contextPath}/assets/calendar/dist/js/demo.js"></script>
	<!-- fullCalendar -->
	<script
		src="${contextPath}/assets/calendar/bower_components/moment/moment.js"></script>
	<script
		src="${contextPath}/assets/calendar/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
	<!-- Page specific script -->
	<script>
		$(function() {

			/* initialize the external events
			 -----------------------------------------------------------------*/
			function init_events(ele) {
				ele.each(function() {

					// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
					// it doesn't need to have a start or end
					var eventObject = {
						title : $.trim($(this).text())
					// use the element's text as the event title
					}

					// store the Event Object in the DOM element so we can get to it later
					$(this).data('eventObject', eventObject)

					// make the event draggable using jQuery UI
					$(this).draggable({
						zIndex : 1070,
						revert : true, // will cause the event to go back to its
						revertDuration : 0
					//  original position after the drag
					})

				})
			}

			init_events($('#external-events div.external-event'))

			/* initialize the calendar
			 -----------------------------------------------------------------*/
			//Date for the calendar events (dummy data)
			var date = new Date()
			var d = date.getDate(), m = date.getMonth(), y = date.getFullYear()
			$('#calendar').fullCalendar(
					{
						header : {
							left : 'prev,next today',
							center : 'title',
							right : 'month,agendaWeek,agendaDay'
						},
						buttonText : {
							today : 'today',
							month : 'month',
							week : 'week',
							day : 'day'
						},
						//Random default events
						events : [ {
							title : '결석',
							start : new Date(y, m, 3),
							backgroundColor : '#f56954', //red
							borderColor : '#f56954' //red
						}, {
							title : '지각',
							start : new Date(y, m, d),
							allDay : false,
							backgroundColor : '#0073b7', //Blue
							borderColor : '#0073b7' //Blue
						}, {
							title : '조퇴',
							start : new Date(y, m, d + 1, 19, 0),
							end : new Date(y, m, d + 1, 22, 30),
							allDay : false,
							backgroundColor : '#00a65a', //Success (green)
							borderColor : '#00a65a' //Success (green)
						}, ],
						editable : false,
						droppable : false, // this allows things to be dropped onto the calendar !!!
						drop : function(date, allDay) { // this function is called when something is dropped

							// retrieve the dropped element's stored Event Object
							var originalEventObject = $(this).data(
									'eventObject')

							// we need to copy it, so that multiple events don't have a reference to the same object
							var copiedEventObject = $.extend({},
									originalEventObject)

							// assign it the date that was reported
							copiedEventObject.start = date
							copiedEventObject.allDay = allDay
							copiedEventObject.backgroundColor = $(this).css(
									'background-color')
							copiedEventObject.borderColor = $(this).css(
									'border-color')

							// render the event on the calendar
							// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
							$('#calendar').fullCalendar('renderEvent',
									copiedEventObject, true)

						}
					})

		})
	</script>
</body>
</html>
