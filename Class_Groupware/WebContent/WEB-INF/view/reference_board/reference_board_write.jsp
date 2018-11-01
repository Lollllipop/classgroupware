<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<script src="//cdn.ckeditor.com/4.10.1/standard/ckeditor.js"></script>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Class Groupware</title>
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
<link href="${contextPath }/assets/open_board/css/open_board_write.css"
	rel="stylesheet" />
</head>
<body>
	<div id="wrapper">
		<%@ include file="/WEB-INF/view/include/nav_top.jsp"%>
		<%@ include file="/WEB-INF/view/include/nav_side.jsp"%>
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">자료실</h1>
			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-content">
								<form id="form1" action="" method="post"
									enctype="multipart/form-data">
									<div class="table-responsive">
										<table class="table" id="dataTables-example"
											style="width: 60%; margin-left: auto; margin-right: auto;">
											<thead>
												<tr>
													<td style="vertical-align: middle; text-align: center">제목</td>
													<td colspan="2"><input type="text"
														class="form-control" placeholder="내용을 입력해주세요"
														style="vertical-align: middle;"></td>
												</tr>
												<tr>
													<td style="text-align: center">작성자</td>
													<input type="hidden" name="아이디" value="">
													<td>아이디</td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td colspan="3"><textarea name="editor1" id="editor1"
															rows="10" cols="30">
													에디터
												</textarea> <script type="text/javascript">
													CKEDITOR.replace('editor1');
												</script></td>
												</tr>
												<tr>
													<td style="text-align: center">첨부파일</td>
													<td><input type="file"></td>
													<td><label class="form-check-label"> <input
															class="form-check-input" type="checkbox" value="">
															선택파일 삭제
													</label></td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="3">
														<div style="float: right;">
															<input type="submit" value="등록" class="btn btn-success">
															<!--onclick시 file data가 있으면같이 submit 없으면 본문만 submit(?)-->
															<input type="button" value="목록으로" class="btn btn-primary">
														</div>
													</td>
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