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
    
        <style>
    .clear {
        clear : both;
    }
    #message {
        text-align: right;
    }

    li { list-style: none; }
    </style>
    
     
</head>
<body>
   <div id="wrapper">
      <%@ include file="/WEB-INF/view/include/nav_top.jsp" %>
      <%@ include file="/WEB-INF/view/include/nav_side.jsp" %>

      <div id="page-wrapper">
         <div class="header">
            <h1 class="page-header">여기에 제목을 쓰시오</h1>
         </div>
         <div id="page-inner">
         
         
            <div class="row">

                <div class="col-md-12">
                     <div class="card">
      <div class="card-content">
         <div class="alert alert-light">

             
             
             <div class="clear"></div>
             <div id = "alldelete">
            
                        <input type = "text"  name="search" style="width : 100px" placeholder="검색" aria-label="검색">
                        <button><i class="material-icons dp48">search</i></button>
           

                    <button type="button" class="btn btn-danger btn-sm" style="float : right;">전체 삭제</button>
                </div>


                <div class="clear"></div>

                <br>

            <li>
				<div id = messagebox>
					<strong>John Doe</strong> <span class="pull-right text-muted">
						<em>Today</em>
					</span>
					<p>
						Lorem Ipsum has been the industry's standard dummy text ever since
						the 1500s...
                        <div id = message>
						<button type="button" class="btn btn-primary btn-xs" onclick="window.open('Message_write.jsp','window','width=450,height=500,location=no,status=no,scrollbars=yes');">답장하기</button>
                            <button type="button" class="btn btn-primary btn-xs">확인하기</button>
                            <button type="button" class="btn btn-danger btn-xs">삭제하기</button>
                            <div id = message>
					</p>
				</div>
				</a>
			</li>
			<li class="divider"></li>
			<li>
				<div id = messagebox>
					<strong>John Smith</strong> <span class="pull-right text-muted">
						<em>Yesterday</em>
                    </span>
                    <p>
                        Lorem Ipsum has been the industry's standard dummy text ever since
						an kwilnw...
                                <div id = message>
						<button type="button" class="btn btn-primary btn-xs" onclick="window.open('Message_write.jsp','window','width=450,height=500,location=no,status=no,scrollbars=yes');">답장하기</button>
                            <button type="button" class="btn btn-primary btn-xs">확인하기</button>
                            <button type="button" class="btn btn-danger btn-xs">삭제하기</button>
                                </div>
					    </p>
                </div>
				</a>
			</li>
			<li class="divider"></li>
			<li>
					<div id = messagebox>
						<strong>John Smith</strong> <span class="pull-right text-muted">
							<em>Yesterday</em>
						</span>
						<p>
							Lorem Ipsum has been the industry's standard dummy text ever
							since the...
                            <div id = message>
							<button type="button" class="btn btn-primary btn-xs" onclick="window.open('Message_write.jsp','window','width=450,height=500,location=no,status=no,scrollbars=yes');">답장하기</button>
                                <button type="button" class="btn btn-primary btn-xs">확인하기</button>
                                <button type="button" class="btn btn-danger btn-xs">삭제하기</button>
                                </div>
                            </p>
                      
					</div>
			</li>

      </div>
			

			<div class="clearBoth"></div>
		</div>
             
 
   
  <!-- Disabled Switch -->
 
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div> 
                    <div class="clear"></div>
                <!-- /.col-lg-12 --> 
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