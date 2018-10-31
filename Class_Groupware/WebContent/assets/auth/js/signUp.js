 function dosubmit() {
      var form = document.getElementById('joinmember_form');
      if (form.onsubmit) {
        var result = form.onsubmit.call(form);
      }
      if (result !== false) {
        form.submit();
      }
    }



    function f_checkValues() {
      var pw = document.getElementById('user_password').value;
      var c_pw = document.getElementById('user_check_password').value;
      var id = document.getElementById('user_id').value;
      var email = document.getElementById('user_email').value;
      
      function email_check( email ) {   
        var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        return (email != '' && email != 'undefined' && regex.test(email));
      }

      console.log(email_check( email ));
      var name = document.getElementById('user_name');

      var size = document.getElementsByName('user_role').length;
      var role = '';

      for (var i = 0; i < size; i++) {
        if (document.getElementsByName('user_role')[i].checked) {
          var role = document.getElementsByName('user_role')[i].value;
        }
      }

      if (pw != c_pw) {
        var warningPw = document.getElementById('check_pw_warning');
        warningPw.innerHTML = '<div id="x"><p style="color : red">비밀번호를 확인해주세요!</p></div>';
      } else {
        document.getElementById('check_pw_warning').innerHTML = '';
        if (id == '') {
          alert('id는 필수 입력 항목입니다.');
          id.focus();
        } else if (email == '') {
          alert('E-mail은 필수 입력 항목입니다.');
          email.focus();
        } else if(!email_check(email)) {
          alert('올바른E-mail형식을 입력해주세요.');
        } else if (name.value == '') {
          alert('이름은 필수 입력 항목입니다.');
          name.focus();
        } else if (role == '') {
          alert('학생인지 강사인지 선택해주세요.');
        } else if (id.value != '' && email.value != '' && name.value != '' && pw.value == c_pw.value && role != '' && email_check(email)==true) {
          //성공 로직
          dosubmit();
        }

      }
    }