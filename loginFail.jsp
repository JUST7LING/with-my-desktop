<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
	2023-09-08
	loginFail.jsp
	@Kallie
 	-->
	<img src = "../image/kiderror.gif">
    <h3>아이디나 비밀번호를 잘못 입력한 것 같아요.</h3>
    <button type = 'button' id = 'retry'>로그인으로 돌아가기</button>
	<button type = 'button' id = 'signIn'>회원가입하기</button>
	
			
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		$('#retry').click(function(){
			location.href = '/boardMVC/board/loginForm.do'
			
		})
		
		$('#signIn').click(function(){
			location.href = '/boardMVC/board/writeForm.do'
		})
	</script>