<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>일정관리</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${contextPath}/assets/materialize/css/materialize.min.css"
	media="screen,projection" />
<!-- Bootstrap Styles-->
<link href="${contextPath}/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="${contextPath}/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="${contextPath}/assets/css/custom-styles.css"
	rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="${contextPath}/assets/js/Lightweight-Chart/cssCharts.css">


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
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${contextPath}/assets/calendar/dist/css/skins/_all-skins.min.css">

</head>
<body>


<!-- 학생은 보기만 할 수 있는 일정관리 페이지 -->


	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">학원 일정</h1>
			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-content">
								<div class="box box-primary">
									<div class="box-body no-padding">
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
							title : '휴강',
							start : new Date(y, m, 1),
							backgroundColor : '#f56954', //red
							borderColor : '#f56954' //red
						}, {
							title : '과제1',
							start : new Date(y, m, d - 5),
							end : new Date(y, m, d - 2),
							backgroundColor : '#f39c12', //yellow
							borderColor : '#f39c12' //yellow
						}, {
							title : '회식',
							start : new Date(y, m, d, 10, 30),
							allDay : false,
							backgroundColor : '#0073b7', //Blue
							borderColor : '#0073b7' //Blue
						}, {
							title : '멘토미팅',
							start : new Date(y, m, d, 12, 0),
							end : new Date(y, m, d, 14, 0),
							allDay : false,
							backgroundColor : '#00c0ef', //Info (aqua)
							borderColor : '#00c0ef' //Info (aqua)
						}, {
							title : '지현생일',
							start : new Date(y, m, d + 1, 19, 0),
							end : new Date(y, m, d + 1, 22, 30),
							allDay : false,
							backgroundColor : '#00a65a', //Success (green)
							borderColor : '#00a65a' //Success (green)
						}, {
							title : '과제2',
							start : new Date(y, m, 28),
							end : new Date(y, m, 29),
							url : 'http://google.com/',
							backgroundColor : '#3c8dbc', //Primary (light-blue)
							borderColor : '#3c8dbc' //Primary (light-blue)
						} ],
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
