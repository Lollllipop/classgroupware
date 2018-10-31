<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Class Groupware</title>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="${contextPath}/assets/materialize/css/materialize.min.css" media="screen,projection" />
    <!-- Bootstrap Styles-->
    <link href="${contextPath}/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${contextPath}/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${contextPath}/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${contextPath}/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="${contextPath}/assets/js/Lightweight-Chart/cssCharts.css" rel="stylesheet" >
    
    <link href="${contextPath }/assets/open_board/css/open_board_write.css" rel="stylesheet"/>
     
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp" %>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp" %>

		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">자유 게시판</h1>
			</div>
			
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">

                            <div class="table-responsive">
                                <table class="table" id="dataTables-example">
                                    <form class="form-group">
                                        <thead>
                                            <tr>
                                                <td style="text-align:center">제목</td>
                                                <td>
                                                    <input type="text" class="form-control" placeholder="내용을 입력해주세요">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 20px; vertical-align: middle;">작성자</td>
                                                <input type="hidden" name="아이디" value="" style="width: 20px; vertical-align: middle;">
                                                <td>아이디</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td colspan="3">
                                                    <textarea class="form-control col-sm-12" rows="12" placeholder="내용을 입력해주세요." class="span5"></textarea>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <form id="file_upload_form" method="post" enctype="multipart/form-data">
                                            <tr>
                                                <td>첨부파일</td>
                                                <td>
                                                    <input type="file">
                                                </td>
                                                <div class="checkbox">
                                                    <label>
                                                        <td>
                                                            <input type="checkbox">선택파일삭제</td>
                                                    </label>
                                                </div>
                                            </tr>
                                        </form>
                                        <tr>
                                            <td colspan="3">
                                                <div class="list_btn">
                                                            <button class="btn">목록으로</button>
                                                            <!--onclicn시 file data가 있으면같이 submit 없으면 본문만 submit(?)-->
                                                </div>
                                                <div class="write_btn">
                                                    <button class="btn">글쓰기</button>
                                                    <!--onclicn시 file data가 있으면같이 submit 없으면 본문만 submit(?)-->
                                                </div>
                                               
                                            </td>
                                        </tr>
                                </table>
                                </form>
                            </div>
                        </div>
                        <!-- /. PAGE INNER  -->
                    </div>
                    <div class="clear"></div>
				
				<%@ include file="/WEB-INF/view/include/footer.jsp" %>
			
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
</body>
</html>