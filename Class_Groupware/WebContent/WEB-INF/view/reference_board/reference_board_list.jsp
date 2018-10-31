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
    
    <link href="${contextPath }/assets/reference_board/css/reference_board_list.css" rel="stylesheet"/>
     
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp" %>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp" %>

		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">자료실</h1>
			</div>
			<div id="page-inner">

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-action">
                                <strong>자료실</strong>
                            </div>
                            <div class="clear"></div>
                            <div class="cntAllTextArea">총 게시물 수</div>
                            <div class="searcharea">
                                <form class="form-inline d-flex justify-content-center">

                                    <div class="selectSearchValue">
                                        <select class="form-control input-sm" name="selectReadCount">
                                            <option value="제목" selected="selected">제목</option>
                                            <option value="내용">내용</option>
                                            <option value="작성자">작성자</option>
                                        </select>
                                    </div>

                                    <div class="search_icon">
                                        <i class="material-icons dp48">search</i>
                                    </div>
                                    <div class="search_area_form_input">
                                        <input type="text" class="form-control" placeholder="으로 검색합니다." id="saerch_form_input_value">
                                    </div>
                                </form>
                            </div>
                            <div class="clear"></div>

                            <div class="card-content">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>글 번호</th>
                                                <th>제목</th>
                                                <th>작성자</th>
                                                <th>작성일</th>
                                                <th>조회수</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr>
                                                <td>1</td>
                                                <td>안녕 1번글이야</td>
                                                <td>조문규</td>
                                                <td>2018.10.26</td>
                                                <td>1</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <div class="selectReadCountArea">
                                        <div class="selectReadCountSelect">
                                            <select class="form-control input-sm" name="selectReadCount">
                                                <option value="5">5</option>
                                                <option value="10" selected="selected">10</option>
                                                <option value="15">15</option>
                                                <option value="20">20</option>
                                            </select>
                                        </div>
                                        <div class="selectReadCountText">개씩보기</div>
                                    </div>


                                    <div class="writebtnArea">
                                        <button type="button" class="btn">글쓰기</button>
                                    </div>

                                    <div class="clear"></div>


                                    <div style="width: 230px; margin-left: auto; margin-right: auto;">
                                            <ul class="pagination">
                                               <li class="page-item"><a class="page-link" href="#">
                                                     <span>«</span>
                                               </a></li>
                                               <li class="page-item active"><a class="page-link"
                                                  href="#">1</a></li>
                                               <li class="page-item"><a class="page-link" href="#">2</a>
                                               </li>
                                               <li class="page-item"><a class="page-link" href="#">3</a>
                                               </li>
                                               <li class="page-item"><a class="page-link" href="#">4</a>
                                               </li>
                                               <li class="page-item"><a class="page-link" href="#">
                                                     <span>»</span>
                                               </a></li>
                                            </ul>
                                         </div>


                                </div>
                            </div>
                        </div>

			
				
				
				<%@ include file="/WEB-INF/view/include/footer.jsp" %>
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
</body>
</html>