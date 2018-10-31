<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Class Groupware</title>
<style>
* {
	margin: 0px;
}

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

.write_btn {
	float: right;
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

#box3 {
	float: left;
	margin: 15px 0px 0px 0px;
}

textarea {
	resize: none;
	border: 2px solid skyblue;
	margin: 5px;
	top: 0px;
}
</style>

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
</head>
<body>
	<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
	<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>

	<div class="card">

		<div class="table-fixed">
			<form class="form-group">
				<table class="table" id="dataTables-example">
					<div id="top">
						<div id="box1">
							<label>보내는 사람:</label> <input type="text" name="from"
								style="width: 200px;" placeholder="홍길동">
						</div>
						<br>
						<div id="box3">
							<label>받는 사람 : </label> <input type="text" name="to"
								style="width: 200px" placeholder="전우치"> <br>
						</div>
						<tbody>
							<tr>
								<td colspan="2"><textarea class="form-control col-sm-5"
										rows="12" placeholder="텍스트를 입력해주세요." style="overflow-y: scroll"></textarea>
								</td>
							</tr>
						</tbody>

						<tr>
							<td colspan="2">
								<div class="write_btn">
									<button class="btn">글쓰기</button>
									<!--onclicn占쏙옙 file data占쏙옙 占쏙옙占쏙옙占썽같占쏙옙 submit 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 submit(?)-->
								</div>
							</td>
						</tr>
				</table>
			</form>
		</div>
	</div>

	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="assets/js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/materialize/js/materialize.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>


	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>