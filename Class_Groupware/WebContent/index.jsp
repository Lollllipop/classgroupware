<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
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


<title>Welcome to ChoongAng!</title>



</head>


<style>
@import url('https://fonts.googleapis.com/css?family=Open+Sans');

.img-box {
	width: 310px;
	height: 200px;
	margin-left: auto;
	margin-right: auto;
}

p {
	font-family: Open Sans, sans-serif;
	font-size: 3.0em;
	text-align: center;
}

.container {
	margin-top: 50px;
}

.logo {
	
}

.logo_txt {
	float: left;
}

.clear {
	clear: both;
}

body {
	background-color : white;
}
</style>
<body>



	<div class="container">
		<div style="float: center;">

			<div class="logo">
				<img src="${contextPath}/assets/main/img/logo.JPG"
					class="img-responsive center-block">
				<p>Choong Ang</p>
			</div>


		</div>




	</div>

	<div class="clear"></div>

	<br>
	<br>
	<br>
	<div class="container">



		<a href="#"><img src="${contextPath}/assets/main/img/login.jpg" alt="..."
			class="img-responsive center-block"></a> <br> <br> <a
			href="#"><img src="${contextPath}/assets/main/img/joinmember.jpg" alt="..."
			class="img-responsive center-block"></a> <br> <br> <br>

		<div class="img_box" style="width: 330px; margin: auto;">
			<a href="#"><img src="${contextPath}/assets/main/img/kakao.png" width="100"
				height="100" style="float: left; margin-right: 15px;" alt="..."
				class="img-responsive center-block"></a> <a href="#"><img
				src="${contextPath}/assets/main/img/google.png" width="100" height="100"
				style="float: left; margin-right: 15px;" alt="..."
				class="img-responsive center-block"></a> <a href="#"><img
				src="${contextPath}/assets/main/img/facebook.png" width="100" height="105"
				style="float: left;" alt="..." class="img-responsive center-block"></a>
		</div>
	</div>





	<!--  
	 <div style="text-align: center; margin-left: auto; margin-right: auto;">
    	<a href="#"><input type = 'image' src="assets/img/login.jpg" value = 'Login'></a>	
 	<br>
 	<br>
       <a href="#"><input type = 'image' src="assets/img/joinmember.jpg" value = 'joinmember'></a>
	<br>
	<br>
  		<a href="#"><input type = 'image' src="assets/img/kakao.jpg" value = 'kakao'></a>
  	<br>
  	<br>
  		<a href="#"><input type = 'image' src="assets/img/naver.jpg" value = 'naver'></a>
  	<br>
  	<br>
  		<a href="#"><input type = 'image' src="assets/img/facebook.jpg" value = 'facebook'></a>
  	<br>
  	</div> -->




	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>

</body>

</html>
