<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="assets/css/main.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <!-- 부가적인 테마 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
 
  <script>
	//미완성 작업중
      function f_test() {
        console.log(document.getElementById('user_id').value);
        if(document.getElementById('user_id')=='1'){
          alert('ㅎㅇ');
        }
      }
      function f_pwCheck() {
        var pw = document.getElementById('user_password').value;
        var c_pw = document.getElementById('user_check_password').value;

        if(pw != c_pw) {
           var warningPw = document.getElementById('check_pw_warning');
           warningPw.innerHTML ='<div id="x"><p style="color : red">비밀번호를 확인해주세요!</p></div>';      
        }else {
          //document.getElementById('x').innerHTML='';
          var id = document.getElementById('user_id');
          var email = document.getElementById('user_email');
          var name = document.getElementById('user_name');
          
          if(id=''){
            alert('id는 필수 입력 항목입니다.');
            document.getElementById('user_id').focus();
          }else if(email=''){
            
          }else if(name=''){

          }
        
        }
      }
      
  </script>
  <style> 
   
   .container{     
        float : left;
    }
    .btn{
    color : #F44336;
    }
    .marg-top100{
        margin-top : 50px;
    }
    
    .py-5{
        background-image : url(../../../../../ProjectUi/mydog.jpg);
        background-repeat: no-repeat;
    }
    .clear{
        clear : both;
    }
    footer>strong{
        color : #F44336;
        font-size : 18px;
    }
    .col-md-4>p>strong{
        color : #F44336;
    }
  </style>
  <title>Join|Choongang</title>
</head>

    <body>  
        <div class="py-5">
        <div class="container-fluid">
          <div class="container">
            <div class="row">
              <div class="col-md-4">
                    <p class="lead"><strong>ChoongAng</strong></p>
                    <p><b>회원가입 페이지</b></p>
                <form id="joinmember_form">
                  <div class="form-group"> 
                    <strong>아이디</strong> 
                    <input type="text" class="form-control" placeholder="아이디" name="user_id" id="user_id"> 
                    <small class="form-text text-muted">아이디가 노출되지 않게 주의하세요.</small> </div>
                  <div class="form-group"> 
                    <strong>비밀번호</strong> 
                    <input type="password" class="form-control" placeholder="비밀번호" name="user_password" id="user_password"> 
                  </div> 
                  <div class="form-group">
                    <strong>비밀번호 확인</strong>
                    <input type="password" class="form-control" placeholder="비밀번호 확인" name="user_check_password" id="user_check_password">
                  </div>
                  <div id="check_pw_warning"></div>
                  <div class="form-group">
                    <strong>이메일</strong>
                    <input type="email" class="form-control" placeholder="이메일을 입력하세요" name="user_email" id="user_email">
                  </div>
                  <div class="form-group">
                    <strong>이름</strong>
                    <input type="text" class="form-control" placeholder="이름을 입력하세요" name="user_name" id="user_name">
                  </div>
                  <div class="form-group">
                    <input type="hidden" name="user_role" value="none">
                  </div>
                  <button type="submit" class="btn">회원가입</button>
                  <div onclick="f_test()">ddsds</div>
                </form>
              </div>
            </div>
          </div>
        </div>
        </div>
       
    </body>
</html>