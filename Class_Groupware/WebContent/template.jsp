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
    
    <%-- 여기에 css등 링크 작성!! --%>
     
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
         
         
            <%-- 여기에 코드 작성!! --%>
            
            
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