 function create_recomment_area() {
            var test = document.getElementById('test');

            test.innerHTML = '<div class="reply_write_area">'+
            '<form>'+
            '<div class="reply_write_left">닉네임</div>'+
            '<div class="reply_write_right">'+
            '<div class="reply_write_text">'+
            '<textarea class="form-control" rows="5" cols="70" placeholder="답글 달기 누르면 나오는 모양" class="span10"></textarea>'+
            '</div>'+
            '<div class="clear"></div>'+
            '<div class="reply_write_button">'+
            '<button class="btn" style="float : right">등록</button>'+
            '</div>'+
            '</div>'+
            '</form>'+
            '</div>';
        }